PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 DUPTABLE                         R1 K2 [{"rawTransformValues"}]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K1 ["rawTransformValues"]
       10 RETURN                           R1 1
       11 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 LOADB                            R2 0
        2 GETTABLEKS                       R3 R0 K0 ["messages"]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 MOVE                             R4 R3
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K1 ["contents"]
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 GETTABLEKS                       R14 R13 K2 ["expanded"]
       20 JUMPIFEQKNIL                     R14 ; [+5]
       22 LOADB                            R1 1
       23 GETTABLEKS                       R2 R13 K2 ["expanded"]
       25 JUMPIF                           R2 ; [+2]
       26 FORGLOOP                         R9 2 ; [-9]
       28 JUMPIF                           R2 ; [+2]
       29 FORGLOOP                         R4 2 ; [-17]
       31 JUMPIFNOT                        R1 ; [+34]
       32 NOT                              R4 R2
       33 MOVE                             R5 R3
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETTABLEKS                       R10 R9 K1 ["contents"]
       39 LOADNIL                          R11
       40 LOADNIL                          R12
       41 FORGPREP                         R10
       42 GETTABLEKS                       R15 R14 K2 ["expanded"]
       44 JUMPIFEQKNIL                     R15 ; [+17]
       46 GETTABLEKS                       R15 R14 K2 ["expanded"]
       48 JUMPIFEQ                         R15 R4 ; [+13]
       50 GETUPVAL                         R15 1
       51 DUPTABLE                         R16 K6 [{"messageId", "contentId", "transformFn"}]
       52 SETTABLEKS                       R8 R16 K3 ["messageId"]
       54 SETTABLEKS                       R13 R16 K4 ["contentId"]
       56 NEWCLOSURE                       R17 P0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          UPVAL U2
       59 SETTABLEKS                       R17 R16 K5 ["transformFn"]
       61 CALL                             R15 1 0
       62 FORGLOOP                         R10 2 ; [-21]
       64 FORGLOOP                         R5 2 ; [-28]
       66 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["Hooks"]
        7 GETTABLEKS                       R3 R4 K1 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R6 R3 K2 ["Config"]
       12 GETTABLEKS                       R5 R6 K3 ["ColorMode"]
       14 GETTABLEKS                       R4 R5 K4 ["Name"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R7 0 2
       26 MOVE                             R8 R1
       27 MOVE                             R9 R2
       28 SETLIST                          R7 R8 2 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 6
       32 GETUPVAL                         R7 7
       33 DUPTABLE                         R8 K11 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
       34 GETUPVAL                         R10 8
       35 GETTABLE                         R9 R10 R4
       36 SETTABLEKS                       R9 R8 K6 ["icon"]
       38 LOADK                            R9 K12 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
       39 SETTABLEKS                       R9 R8 K7 ["tag"]
       41 LOADK                            R9 K13 ["size-400-400 content-emphasis"]
       42 SETTABLEKS                       R9 R8 K8 ["iconTag"]
       44 SETTABLEKS                       R5 R8 K9 ["onActivated"]
       46 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       48 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       50 CALL                             R6 2 -1
       51 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedModel"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+8]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["SettingsDialog"]
        8 LOADK                            R3 K2 ["Default"]
        9 NAMECALL                         R0 R0 K3 ["getText"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K0 ["selectedModel"]
       16 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"ClearConversation", "ManageIntegrations", "EditApiKeys"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["Settings"]
        3 LOADK                            R4 K0 ["ClearConversation"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ClearConversation"]
        9 GETUPVAL                         R2 1
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R1 0
       13 LOADK                            R3 K6 ["IntegrationManagement"]
       14 LOADK                            R4 K1 ["ManageIntegrations"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 3 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K1 ["ManageIntegrations"]
       22 GETUPVAL                         R2 2
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K7 ["SettingsDialog"]
       27 LOADK                            R4 K2 ["EditApiKeys"]
       28 NAMECALL                         R1 R1 K5 ["getText"]
       30 CALL                             R1 3 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K2 ["EditApiKeys"]
       35 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showApiKeys"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showIntegrations"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R1 R0 K1 ["GetDescendants"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 LOADK                            R8 K2 ["TextLabel"]
       10 NAMECALL                         R6 R5 K3 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+7]
       14 LOADB                            R6 0
       15 SETTABLEKS                       R6 R5 K4 ["TextWrapped"]
       17 GETIMPORT                        R6 K8 [Enum.TextTruncate.None]
       19 SETTABLEKS                       R6 R5 K6 ["TextTruncate"]
       21 FORGLOOP                         R1 2 ; [-13]
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useContext"]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K3 ["Context"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K4 ["reasonDisabled"]
       17 MOVE                             R5 R4
       18 JUMPIFNOT                        R5 ; [+9]
       19 GETTABLEKS                       R6 R4 K4 ["reasonDisabled"]
       21 GETUPVAL                         R8 4
       22 GETTABLEKS                       R7 R8 K5 ["Generation"]
       24 JUMPIFEQ                         R6 R7 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K2 ["useContext"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R7 R8 K3 ["Context"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 6
       36 GETTABLEKS                       R7 R8 K6 ["createNextOrder"]
       38 CALL                             R7 0 1
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K7 ["useState"]
       42 LOADB                            R9 0
       43 CALL                             R8 1 2
       44 LOADNIL                          R10
       45 LOADNIL                          R11
       46 GETUPVAL                         R12 7
       47 CALL                             R12 0 1
       48 JUMPIFNOT                        R12 ; [+26]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R12 R13 K2 ["useContext"]
       52 GETUPVAL                         R14 8
       53 GETTABLEKS                       R13 R14 K3 ["Context"]
       55 CALL                             R12 1 1
       56 MOVE                             R10 R12
       57 GETUPVAL                         R13 2
       58 GETTABLEKS                       R12 R13 K8 ["useMemo"]
       60 NEWCLOSURE                       R13 P0
       61 CAPTURE                          REF R10
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          UPVAL U10
       64 NEWTABLE                         R14 0 2
       66 GETTABLEKS                       R15 R10 K9 ["selectedModel"]
       68 GETUPVAL                         R17 10
       69 GETTABLEKS                       R16 R17 K10 ["locale"]
       71 SETLIST                          R14 R15 2 [1]
       73 CALL                             R12 2 1
       74 MOVE                             R11 R12
       75 GETUPVAL                         R13 2
       76 GETTABLEKS                       R12 R13 K8 ["useMemo"]
       78 DUPCLOSURE                       R13 K11 [PROTO_5]
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          UPVAL U11
       81 CAPTURE                          UPVAL U7
       82 NEWTABLE                         R14 0 1
       84 GETUPVAL                         R16 10
       85 GETTABLEKS                       R15 R16 K10 ["locale"]
       87 SETLIST                          R14 R15 1 [1]
       89 CALL                             R12 2 1
       90 NEWTABLE                         R13 0 0
       92 GETUPVAL                         R14 12
       93 CALL                             R14 0 1
       94 JUMPIFNOT                        R14 ; [+10]
       95 GETUPVAL                         R14 13
       96 GETUPVAL                         R15 14
       97 DUPTABLE                         R16 K13 [{"LayoutOrder"}]
       98 MOVE                             R17 R7
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K14 ["ExternalServerCheckbox"]
      105 GETUPVAL                         R14 7
      106 CALL                             R14 0 1
      107 JUMPIFNOT                        R14 ; [+78]
      108 GETTABLEKS                       R14 R0 K15 ["showApiKeys"]
      110 JUMPIFNOT                        R14 ; [+75]
      111 GETUPVAL                         R14 13
      112 GETUPVAL                         R15 15
      113 DUPTABLE                         R16 K17 [{"tag", "LayoutOrder"}]
      114 LOADK                            R17 K18 ["col auto-xy gap-xxsmall"]
      115 SETTABLEKS                       R17 R16 K16 ["tag"]
      117 MOVE                             R17 R7
      118 CALL                             R17 0 1
      119 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      121 DUPTABLE                         R17 K21 [{"EditApiKeysButton", "CurrentModelText"}]
      122 GETUPVAL                         R18 13
      123 GETUPVAL                         R19 16
      124 DUPTABLE                         R20 K27 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      125 GETTABLEKS                       R21 R12 K28 ["EditApiKeys"]
      127 SETTABLEKS                       R21 R20 K22 ["text"]
      129 GETUPVAL                         R24 0
      130 GETTABLEKS                       R23 R24 K29 ["Enums"]
      132 GETTABLEKS                       R22 R23 K30 ["ButtonSize"]
      134 GETTABLEKS                       R21 R22 K31 ["XSmall"]
      136 SETTABLEKS                       R21 R20 K23 ["size"]
      138 GETUPVAL                         R24 0
      139 GETTABLEKS                       R23 R24 K29 ["Enums"]
      141 GETTABLEKS                       R22 R23 K32 ["ButtonVariant"]
      143 GETTABLEKS                       R21 R22 K33 ["Text"]
      145 SETTABLEKS                       R21 R20 K24 ["variant"]
      147 GETUPVAL                         R24 0
      148 GETTABLEKS                       R23 R24 K29 ["Enums"]
      150 GETTABLEKS                       R22 R23 K34 ["FillBehavior"]
      152 GETTABLEKS                       R21 R22 K35 ["Fill"]
      154 SETTABLEKS                       R21 R20 K25 ["fillBehavior"]
      156 MOVE                             R21 R7
      157 CALL                             R21 0 1
      158 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      160 NEWCLOSURE                       R21 P2
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R0
      163 SETTABLEKS                       R21 R20 K26 ["onActivated"]
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K19 ["EditApiKeysButton"]
      168 GETUPVAL                         R18 13
      169 GETUPVAL                         R19 17
      170 DUPTABLE                         R20 K36 [{"tag", "Text", "LayoutOrder"}]
      171 LOADK                            R21 K37 ["auto-xy text-caption-medium text-wrap text-align-x-left padding-left-small"]
      172 SETTABLEKS                       R21 R20 K16 ["tag"]
      174 SETTABLEKS                       R11 R20 K33 ["Text"]
      176 MOVE                             R21 R7
      177 CALL                             R21 0 1
      178 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K20 ["CurrentModelText"]
      183 CALL                             R14 3 1
      184 SETTABLEKS                       R14 R13 K38 ["EditApiKeysGroup"]
      186 GETUPVAL                         R14 11
      187 CALL                             R14 0 1
      188 JUMPIFNOT                        R14 ; [+49]
      189 GETTABLEKS                       R14 R0 K39 ["showIntegrations"]
      191 JUMPIFNOT                        R14 ; [+46]
      192 GETUPVAL                         R14 13
      193 GETUPVAL                         R15 16
      194 DUPTABLE                         R16 K27 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      195 GETTABLEKS                       R17 R12 K40 ["ManageIntegrations"]
      197 SETTABLEKS                       R17 R16 K22 ["text"]
      199 GETUPVAL                         R20 0
      200 GETTABLEKS                       R19 R20 K29 ["Enums"]
      202 GETTABLEKS                       R18 R19 K30 ["ButtonSize"]
      204 GETTABLEKS                       R17 R18 K31 ["XSmall"]
      206 SETTABLEKS                       R17 R16 K23 ["size"]
      208 GETUPVAL                         R20 0
      209 GETTABLEKS                       R19 R20 K29 ["Enums"]
      211 GETTABLEKS                       R18 R19 K32 ["ButtonVariant"]
      213 GETTABLEKS                       R17 R18 K33 ["Text"]
      215 SETTABLEKS                       R17 R16 K24 ["variant"]
      217 GETUPVAL                         R20 0
      218 GETTABLEKS                       R19 R20 K29 ["Enums"]
      220 GETTABLEKS                       R18 R19 K34 ["FillBehavior"]
      222 GETTABLEKS                       R17 R18 K35 ["Fill"]
      224 SETTABLEKS                       R17 R16 K25 ["fillBehavior"]
      226 MOVE                             R17 R7
      227 CALL                             R17 0 1
      228 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      230 NEWCLOSURE                       R17 P3
      231 CAPTURE                          VAL R9
      232 CAPTURE                          VAL R0
      233 SETTABLEKS                       R17 R16 K26 ["onActivated"]
      235 CALL                             R14 2 1
      236 SETTABLEKS                       R14 R13 K41 ["ManageIntegrationsButton"]
      238 GETUPVAL                         R14 13
      239 GETUPVAL                         R15 16
      240 DUPTABLE                         R16 K43 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      241 GETTABLEKS                       R17 R12 K44 ["ClearConversation"]
      243 SETTABLEKS                       R17 R16 K22 ["text"]
      245 GETUPVAL                         R20 0
      246 GETTABLEKS                       R19 R20 K29 ["Enums"]
      248 GETTABLEKS                       R18 R19 K30 ["ButtonSize"]
      250 GETTABLEKS                       R17 R18 K31 ["XSmall"]
      252 SETTABLEKS                       R17 R16 K23 ["size"]
      254 GETUPVAL                         R20 0
      255 GETTABLEKS                       R19 R20 K29 ["Enums"]
      257 GETTABLEKS                       R18 R19 K32 ["ButtonVariant"]
      259 GETTABLEKS                       R17 R18 K33 ["Text"]
      261 SETTABLEKS                       R17 R16 K24 ["variant"]
      263 GETUPVAL                         R20 0
      264 GETTABLEKS                       R19 R20 K29 ["Enums"]
      266 GETTABLEKS                       R18 R19 K34 ["FillBehavior"]
      268 GETTABLEKS                       R17 R18 K35 ["Fill"]
      270 SETTABLEKS                       R17 R16 K25 ["fillBehavior"]
      272 MOVE                             R17 R7
      273 CALL                             R17 0 1
      274 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      276 SETTABLEKS                       R5 R16 K42 ["isDisabled"]
      278 SETTABLEKS                       R2 R16 K26 ["onActivated"]
      280 CALL                             R14 2 1
      281 SETTABLEKS                       R14 R13 K45 ["ClearConversationButton"]
      283 GETUPVAL                         R14 11
      284 CALL                             R14 0 1
      285 JUMPIF                           R14 ; [+48]
      286 GETUPVAL                         R14 7
      287 CALL                             R14 0 1
      288 JUMPIF                           R14 ; [+45]
      289 GETTABLEKS                       R14 R6 K46 ["options"]
      291 JUMPIFNOT                        R14 ; [+42]
      292 LENGTH                           R15 R14
      293 LOADN                            R16 0
      294 JUMPIFNOTLT                      R16 R15 ; [+39]
      296 MOVE                             R15 R14
      297 LOADNIL                          R16
      298 LOADNIL                          R17
      299 FORGPREP                         R15
      300 GETTABLEKS                       R20 R19 K47 ["label"]
      302 GETUPVAL                         R21 13
      303 GETUPVAL                         R22 18
      304 DUPTABLE                         R23 K49 [{"LayoutOrder", "isChecked", "onActivated", "label", "size"}]
      305 MOVE                             R24 R7
      306 CALL                             R24 0 1
      307 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      309 GETTABLEKS                       R24 R19 K48 ["isChecked"]
      311 SETTABLEKS                       R24 R23 K48 ["isChecked"]
      313 GETTABLEKS                       R24 R19 K50 ["onChange"]
      315 SETTABLEKS                       R24 R23 K26 ["onActivated"]
      317 GETTABLEKS                       R24 R19 K51 ["displayLabel"]
      319 SETTABLEKS                       R24 R23 K47 ["label"]
      321 GETUPVAL                         R27 0
      322 GETTABLEKS                       R26 R27 K29 ["Enums"]
      324 GETTABLEKS                       R25 R26 K52 ["InputSize"]
      326 GETTABLEKS                       R24 R25 K31 ["XSmall"]
      328 SETTABLEKS                       R24 R23 K23 ["size"]
      330 CALL                             R21 2 1
      331 SETTABLE                         R21 R13 R20
      332 FORGLOOP                         R15 2 ; [-33]
      334 GETUPVAL                         R15 2
      335 GETTABLEKS                       R14 R15 K53 ["useRef"]
      337 LOADNIL                          R15
      338 CALL                             R14 1 1
      339 GETUPVAL                         R16 2
      340 GETTABLEKS                       R15 R16 K54 ["useEffect"]
      342 NEWCLOSURE                       R16 P4
      343 CAPTURE                          VAL R14
      344 NEWTABLE                         R17 0 2
      346 GETTABLEKS                       R18 R14 K55 ["current"]
      348 GETTABLEKS                       R19 R6 K46 ["options"]
      350 SETLIST                          R17 R18 2 [1]
      352 CALL                             R15 2 0
      353 LOADK                            R15 K56 ["auto-xy radius-medium padding-small bg-surface-100"]
      354 LOADNIL                          R16
      355 GETUPVAL                         R17 19
      356 CALL                             R17 0 1
      357 JUMPIFNOT                        R17 ; [+23]
      358 MOVE                             R17 R15
      359 LOADK                            R18 K57 [" gap-small"]
      360 CONCAT                           R15 R17 R18
      361 GETUPVAL                         R18 2
      362 GETTABLEKS                       R17 R18 K58 ["createElement"]
      364 LOADK                            R18 K59 ["UIListLayout"]
      365 DUPTABLE                         R19 K63 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      366 GETIMPORT                        R20 K66 [Enum.FillDirection.Vertical]
      368 SETTABLEKS                       R20 R19 K60 ["FillDirection"]
      370 GETIMPORT                        R20 K68 [Enum.HorizontalAlignment.Left]
      372 SETTABLEKS                       R20 R19 K61 ["HorizontalAlignment"]
      374 GETIMPORT                        R20 K69 [Enum.SortOrder.LayoutOrder]
      376 SETTABLEKS                       R20 R19 K62 ["SortOrder"]
      378 CALL                             R17 2 1
      379 MOVE                             R16 R17
      380 JUMP                             ; [+29]
      381 GETUPVAL                         R18 2
      382 GETTABLEKS                       R17 R18 K58 ["createElement"]
      384 LOADK                            R18 K59 ["UIListLayout"]
      385 DUPTABLE                         R19 K71 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      386 GETIMPORT                        R20 K74 [UDim.new]
      388 LOADN                            R21 0
      389 GETTABLEKS                       R23 R1 K70 ["Padding"]
      391 GETTABLEKS                       R22 R23 K75 ["Small"]
      393 CALL                             R20 2 1
      394 SETTABLEKS                       R20 R19 K70 ["Padding"]
      396 GETIMPORT                        R20 K66 [Enum.FillDirection.Vertical]
      398 SETTABLEKS                       R20 R19 K60 ["FillDirection"]
      400 GETIMPORT                        R20 K68 [Enum.HorizontalAlignment.Left]
      402 SETTABLEKS                       R20 R19 K61 ["HorizontalAlignment"]
      404 GETIMPORT                        R20 K69 [Enum.SortOrder.LayoutOrder]
      406 SETTABLEKS                       R20 R19 K62 ["SortOrder"]
      408 CALL                             R17 2 1
      409 MOVE                             R16 R17
      410 SETTABLEKS                       R16 R13 K76 ["Layout"]
      412 GETUPVAL                         R17 13
      413 GETUPVAL                         R19 20
      414 GETTABLEKS                       R18 R19 K77 ["Root"]
      416 DUPTABLE                         R19 K79 [{"isOpen"}]
      417 SETTABLEKS                       R8 R19 K78 ["isOpen"]
      419 DUPTABLE                         R20 K82 [{"SettingsAnchor", "Content"}]
      420 GETUPVAL                         R21 13
      421 GETUPVAL                         R23 20
      422 GETTABLEKS                       R22 R23 K83 ["Anchor"]
      424 DUPTABLE                         R23 K13 [{"LayoutOrder"}]
      425 GETTABLEKS                       R24 R0 K12 ["LayoutOrder"]
      427 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      429 DUPTABLE                         R24 K85 [{"Button"}]
      430 GETUPVAL                         R25 13
      431 GETUPVAL                         R26 21
      432 DUPTABLE                         R27 K89 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      433 LOADK                            R28 K90 ["icons/actions/overflow"]
      434 SETTABLEKS                       R28 R27 K86 ["icon"]
      436 LOADK                            R28 K91 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      437 SETTABLEKS                       R28 R27 K16 ["tag"]
      439 LOADK                            R28 K92 ["size-400-400 content-emphasis"]
      440 SETTABLEKS                       R28 R27 K87 ["iconTag"]
      442 GETUPVAL                         R30 22
      443 GETTABLEKS                       R29 R30 K93 ["Header"]
      445 GETTABLEKS                       R28 R29 K94 ["SettingsButton"]
      447 SETTABLEKS                       R28 R27 K88 ["testId"]
      449 NEWCLOSURE                       R28 P5
      450 CAPTURE                          VAL R9
      451 CAPTURE                          VAL R8
      452 SETTABLEKS                       R28 R27 K26 ["onActivated"]
      454 CALL                             R25 2 1
      455 SETTABLEKS                       R25 R24 K84 ["Button"]
      457 CALL                             R21 3 1
      458 SETTABLEKS                       R21 R20 K80 ["SettingsAnchor"]
      460 GETUPVAL                         R21 13
      461 GETUPVAL                         R23 20
      462 GETTABLEKS                       R22 R23 K81 ["Content"]
      464 DUPTABLE                         R23 K99 [{"side", "align", "hasArrow", "onPressedOutside"}]
      465 DUPTABLE                         R24 K102 [{"position", "offset"}]
      466 GETUPVAL                         R28 0
      467 GETTABLEKS                       R27 R28 K29 ["Enums"]
      469 GETTABLEKS                       R26 R27 K103 ["PopoverSide"]
      471 GETTABLEKS                       R25 R26 K104 ["Bottom"]
      473 SETTABLEKS                       R25 R24 K100 ["position"]
      475 GETTABLEKS                       R26 R1 K105 ["Gap"]
      477 GETTABLEKS                       R25 R26 K31 ["XSmall"]
      479 SETTABLEKS                       R25 R24 K101 ["offset"]
      481 SETTABLEKS                       R24 R23 K95 ["side"]
      483 GETUPVAL                         R27 0
      484 GETTABLEKS                       R26 R27 K29 ["Enums"]
      486 GETTABLEKS                       R25 R26 K106 ["PopoverAlign"]
      488 GETTABLEKS                       R24 R25 K107 ["Start"]
      490 SETTABLEKS                       R24 R23 K96 ["align"]
      492 LOADB                            R24 0
      493 SETTABLEKS                       R24 R23 K97 ["hasArrow"]
      495 NEWCLOSURE                       R24 P6
      496 CAPTURE                          VAL R9
      497 SETTABLEKS                       R24 R23 K98 ["onPressedOutside"]
      499 DUPTABLE                         R24 K109 [{"SettingsContent"}]
      500 GETUPVAL                         R25 13
      501 GETUPVAL                         R26 15
      502 DUPTABLE                         R27 K112 [{"tag", "ref", "testId", "sizeConstraint"}]
      503 SETTABLEKS                       R15 R27 K16 ["tag"]
      505 SETTABLEKS                       R14 R27 K110 ["ref"]
      507 GETUPVAL                         R30 22
      508 GETTABLEKS                       R29 R30 K93 ["Header"]
      510 GETTABLEKS                       R28 R29 K108 ["SettingsContent"]
      512 SETTABLEKS                       R28 R27 K88 ["testId"]
      514 GETUPVAL                         R29 7
      515 CALL                             R29 0 1
      516 JUMPIFNOT                        R29 ; [+9]
      517 DUPTABLE                         R28 K114 [{"MinSize"}]
      518 GETIMPORT                        R29 K116 [Vector2.new]
      520 LOADN                            R30 150
      521 LOADN                            R31 0
      522 CALL                             R29 2 1
      523 SETTABLEKS                       R29 R28 K113 ["MinSize"]
      525 JUMP                             ; [+1]
      526 LOADNIL                          R28
      527 SETTABLEKS                       R28 R27 K111 ["sizeConstraint"]
      529 MOVE                             R28 R13
      530 CALL                             R25 3 1
      531 SETTABLEKS                       R25 R24 K108 ["SettingsContent"]
      533 CALL                             R21 3 1
      534 SETTABLEKS                       R21 R20 K81 ["Content"]
      536 CALL                             R17 3 -1
      537 CLOSEUPVALS                      R10
      538 RETURN                           R17 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+3]
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 MOVE                             R2 R3
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R4 R2 K1 ["showApiKeys"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 GETUPVAL                         R5 4
       23 GETUPVAL                         R6 5
       24 DUPTABLE                         R7 K4 [{"tag", "LayoutOrder"}]
       25 NEWTABLE                         R8 4 0
       27 LOADB                            R9 1
       28 SETTABLEKS                       R9 R8 K5 ["row size-full-0 auto-y padding-small gap-xsmall"]
       30 GETUPVAL                         R10 6
       31 CALL                             R10 0 1
       32 NOT                              R9 R10
       33 SETTABLEKS                       R9 R8 K6 ["align-x-right"]
       35 GETUPVAL                         R9 6
       36 CALL                             R9 0 1
       37 SETTABLEKS                       R9 R8 K7 ["align-y-center"]
       39 SETTABLEKS                       R8 R7 K2 ["tag"]
       41 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       43 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       45 DUPTABLE                         R8 K12 [{"FillArea", "Expand", "Settings", "DialogWidget"}]
       46 GETUPVAL                         R10 6
       47 CALL                             R10 0 1
       48 JUMPIFNOT                        R10 ; [+23]
       49 GETUPVAL                         R9 4
       50 GETUPVAL                         R10 5
       51 DUPTABLE                         R11 K4 [{"tag", "LayoutOrder"}]
       52 LOADK                            R12 K13 ["fill align-x-left align-y-center"]
       53 SETTABLEKS                       R12 R11 K2 ["tag"]
       55 MOVE                             R12 R1
       56 CALL                             R12 0 1
       57 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       59 DUPTABLE                         R12 K15 [{"ToggleThreadsMenuButton"}]
       60 GETUPVAL                         R13 4
       61 GETUPVAL                         R14 7
       62 DUPTABLE                         R15 K16 [{"LayoutOrder"}]
       63 MOVE                             R16 R1
       64 CALL                             R16 0 1
       65 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K14 ["ToggleThreadsMenuButton"]
       70 CALL                             R9 3 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLEKS                       R9 R8 K8 ["FillArea"]
       75 GETUPVAL                         R9 4
       76 GETUPVAL                         R10 8
       77 DUPTABLE                         R11 K16 [{"LayoutOrder"}]
       78 MOVE                             R12 R1
       79 CALL                             R12 0 1
       80 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K9 ["Expand"]
       85 GETUPVAL                         R9 4
       86 GETUPVAL                         R10 9
       87 DUPTABLE                         R11 K17 [{"LayoutOrder", "showIntegrations", "showApiKeys"}]
       88 MOVE                             R12 R1
       89 CALL                             R12 0 1
       90 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       92 SETTABLEKS                       R3 R11 K0 ["showIntegrations"]
       94 SETTABLEKS                       R4 R11 K1 ["showApiKeys"]
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K10 ["Settings"]
       99 GETUPVAL                         R10 1
      100 CALL                             R10 0 1
      101 JUMPIF                           R10 ; [+3]
      102 GETUPVAL                         R10 2
      103 CALL                             R10 0 1
      104 JUMPIFNOT                        R10 ; [+3]
      105 GETTABLEKS                       R9 R2 K18 ["root"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R9
      109 SETTABLEKS                       R9 R8 K11 ["DialogWidget"]
      111 CALL                             R5 3 -1
      112 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["ExternalServerCheckbox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K12 ["InputStateContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Components"]
       41 GETTABLEKS                       R7 R8 K11 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K13 ["LLMProviderSelectionContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Components"]
       50 GETTABLEKS                       R8 R9 K11 ["Contexts"]
       52 GETTABLEKS                       R7 R8 K14 ["OptionsContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K9 ["Parent"]
       59 GETTABLEKS                       R8 R9 K15 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K9 ["Parent"]
       66 GETTABLEKS                       R9 R10 K16 ["ReactUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K17 ["Util"]
       73 GETTABLEKS                       R10 R11 K18 ["TestIds"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R13 R0 K6 ["Components"]
       80 GETTABLEKS                       R12 R13 K19 ["ThreadsWindow"]
       82 GETTABLEKS                       R11 R12 K20 ["ToggleThreadsMenuButton"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R14 R0 K21 ["Resources"]
       89 GETTABLEKS                       R13 R14 K22 ["Localization"]
       91 GETTABLEKS                       R12 R13 K23 ["Translator"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K24 ["Types"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      103 GETTABLEKS                       R14 R15 K26 ["useClearConversation"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      110 GETTABLEKS                       R15 R16 K27 ["useEditContent"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      117 GETTABLEKS                       R16 R17 K28 ["useGetThread"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      124 GETTABLEKS                       R17 R18 K29 ["useSettingsDialog"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R19 R0 K30 ["Flags"]
      131 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantMultipleChatSupport"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R20 R0 K30 ["Flags"]
      138 GETTABLEKS                       R19 R20 K32 ["FFlagAssistantPersistConversations"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R21 R0 K30 ["Flags"]
      145 GETTABLEKS                       R20 R21 K33 ["FFlagCAP2592"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R22 R0 K30 ["Flags"]
      152 GETTABLEKS                       R21 R22 K34 ["FFlagFoundationDisableStylingPolyfill"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R23 R0 K30 ["Flags"]
      159 GETTABLEKS                       R22 R23 K35 ["FFlagMCPAssistantExternalAPIKey"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R24 R0 K30 ["Flags"]
      166 GETTABLEKS                       R23 R24 K36 ["FFlagMCPAssistantManagementMenu"]
      168 CALL                             R22 1 1
      169 GETTABLEKS                       R23 R3 K37 ["Button"]
      171 GETTABLEKS                       R24 R3 K38 ["Checkbox"]
      173 GETTABLEKS                       R25 R3 K39 ["Popover"]
      175 GETTABLEKS                       R26 R3 K40 ["Text"]
      177 GETTABLEKS                       R27 R3 K41 ["View"]
      179 GETTABLEKS                       R28 R8 K42 ["createNextOrder"]
      181 GETTABLEKS                       R29 R7 K43 ["createElement"]
      183 GETTABLEKS                       R30 R4 K44 ["InputDisabledReasons"]
      185 GETTABLEKS                       R31 R12 K45 ["DEFAULT_STUDIO_MODEL"]
      187 DUPTABLE                         R32 K48 [{"Dark", "Light"}]
      188 LOADK                            R33 K49 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      189 SETTABLEKS                       R33 R32 K46 ["Dark"]
      191 LOADK                            R33 K50 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      192 SETTABLEKS                       R33 R32 K47 ["Light"]
      194 DUPCLOSURE                       R33 K51 [PROTO_3]
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R32
      204 DUPCLOSURE                       R34 K52 [PROTO_11]
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R19
      218 CAPTURE                          VAL R29
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R9
      228 DUPCLOSURE                       R35 K53 [PROTO_12]
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R29
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R34
      239 RETURN                           R35 1
