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
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K6 ["IntegrationManagement"]
       13 LOADK                            R4 K1 ["ManageIntegrations"]
       14 NAMECALL                         R1 R1 K5 ["getText"]
       16 CALL                             R1 3 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K1 ["ManageIntegrations"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K7 ["SettingsDialog"]
       23 LOADK                            R4 K2 ["EditApiKeys"]
       24 NAMECALL                         R1 R1 K5 ["getText"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K2 ["EditApiKeys"]
       29 RETURN                           R0 1

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
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R6 R7 K6 ["createNextOrder"]
       31 CALL                             R6 0 1
       32 GETUPVAL                         R7 6
       33 CALL                             R7 0 1
       34 JUMPIF                           R7 ; [+2]
       35 GETUPVAL                         R7 7
       36 CALL                             R7 0 1
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K7 ["useState"]
       40 LOADB                            R9 0
       41 CALL                             R8 1 2
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R10 R11 K2 ["useContext"]
       45 GETUPVAL                         R12 8
       46 GETTABLEKS                       R11 R12 K3 ["Context"]
       48 CALL                             R10 1 1
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K8 ["useMemo"]
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R10
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          UPVAL U10
       56 NEWTABLE                         R13 0 2
       58 GETTABLEKS                       R14 R10 K9 ["selectedModel"]
       60 GETUPVAL                         R16 10
       61 GETTABLEKS                       R15 R16 K10 ["locale"]
       63 SETLIST                          R13 R14 2 [1]
       65 CALL                             R11 2 1
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R12 R13 K8 ["useMemo"]
       69 NEWCLOSURE                       R13 P1
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          VAL R7
       72 NEWTABLE                         R14 0 2
       74 GETUPVAL                         R16 10
       75 GETTABLEKS                       R15 R16 K10 ["locale"]
       77 MOVE                             R16 R7
       78 SETLIST                          R14 R15 2 [1]
       80 CALL                             R12 2 1
       81 NEWTABLE                         R13 0 0
       83 GETTABLEKS                       R14 R0 K11 ["showApiKeys"]
       85 JUMPIFNOT                        R14 ; [+75]
       86 GETUPVAL                         R14 11
       87 GETUPVAL                         R15 12
       88 DUPTABLE                         R16 K14 [{"tag", "LayoutOrder"}]
       89 LOADK                            R17 K15 ["col auto-xy gap-xxsmall"]
       90 SETTABLEKS                       R17 R16 K12 ["tag"]
       92 MOVE                             R17 R6
       93 CALL                             R17 0 1
       94 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       96 DUPTABLE                         R17 K18 [{"EditApiKeysButton", "CurrentModelText"}]
       97 GETUPVAL                         R18 11
       98 GETUPVAL                         R19 13
       99 DUPTABLE                         R20 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      100 GETTABLEKS                       R21 R12 K25 ["EditApiKeys"]
      102 SETTABLEKS                       R21 R20 K19 ["text"]
      104 GETUPVAL                         R24 0
      105 GETTABLEKS                       R23 R24 K26 ["Enums"]
      107 GETTABLEKS                       R22 R23 K27 ["ButtonSize"]
      109 GETTABLEKS                       R21 R22 K28 ["XSmall"]
      111 SETTABLEKS                       R21 R20 K20 ["size"]
      113 GETUPVAL                         R24 0
      114 GETTABLEKS                       R23 R24 K26 ["Enums"]
      116 GETTABLEKS                       R22 R23 K29 ["ButtonVariant"]
      118 GETTABLEKS                       R21 R22 K30 ["Text"]
      120 SETTABLEKS                       R21 R20 K21 ["variant"]
      122 GETUPVAL                         R24 0
      123 GETTABLEKS                       R23 R24 K26 ["Enums"]
      125 GETTABLEKS                       R22 R23 K31 ["FillBehavior"]
      127 GETTABLEKS                       R21 R22 K32 ["Fill"]
      129 SETTABLEKS                       R21 R20 K22 ["fillBehavior"]
      131 MOVE                             R21 R6
      132 CALL                             R21 0 1
      133 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      135 NEWCLOSURE                       R21 P2
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R21 R20 K23 ["onActivated"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K16 ["EditApiKeysButton"]
      143 GETUPVAL                         R18 11
      144 GETUPVAL                         R19 14
      145 DUPTABLE                         R20 K33 [{"tag", "Text", "LayoutOrder"}]
      146 LOADK                            R21 K34 ["auto-xy text-caption-medium text-wrap text-align-x-left padding-left-small"]
      147 SETTABLEKS                       R21 R20 K12 ["tag"]
      149 SETTABLEKS                       R11 R20 K30 ["Text"]
      151 MOVE                             R21 R6
      152 CALL                             R21 0 1
      153 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K17 ["CurrentModelText"]
      158 CALL                             R14 3 1
      159 SETTABLEKS                       R14 R13 K35 ["EditApiKeysGroup"]
      161 JUMPIFNOT                        R7 ; [+49]
      162 GETTABLEKS                       R14 R0 K36 ["showIntegrations"]
      164 JUMPIFNOT                        R14 ; [+46]
      165 GETUPVAL                         R14 11
      166 GETUPVAL                         R15 13
      167 DUPTABLE                         R16 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      168 GETTABLEKS                       R17 R12 K37 ["ManageIntegrations"]
      170 SETTABLEKS                       R17 R16 K19 ["text"]
      172 GETUPVAL                         R20 0
      173 GETTABLEKS                       R19 R20 K26 ["Enums"]
      175 GETTABLEKS                       R18 R19 K27 ["ButtonSize"]
      177 GETTABLEKS                       R17 R18 K28 ["XSmall"]
      179 SETTABLEKS                       R17 R16 K20 ["size"]
      181 GETUPVAL                         R20 0
      182 GETTABLEKS                       R19 R20 K26 ["Enums"]
      184 GETTABLEKS                       R18 R19 K29 ["ButtonVariant"]
      186 GETTABLEKS                       R17 R18 K30 ["Text"]
      188 SETTABLEKS                       R17 R16 K21 ["variant"]
      190 GETUPVAL                         R20 0
      191 GETTABLEKS                       R19 R20 K26 ["Enums"]
      193 GETTABLEKS                       R18 R19 K31 ["FillBehavior"]
      195 GETTABLEKS                       R17 R18 K32 ["Fill"]
      197 SETTABLEKS                       R17 R16 K22 ["fillBehavior"]
      199 MOVE                             R17 R6
      200 CALL                             R17 0 1
      201 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      203 NEWCLOSURE                       R17 P3
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      208 CALL                             R14 2 1
      209 SETTABLEKS                       R14 R13 K38 ["ManageIntegrationsButton"]
      211 GETUPVAL                         R14 11
      212 GETUPVAL                         R15 13
      213 DUPTABLE                         R16 K40 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      214 GETTABLEKS                       R17 R12 K41 ["ClearConversation"]
      216 SETTABLEKS                       R17 R16 K19 ["text"]
      218 GETUPVAL                         R20 0
      219 GETTABLEKS                       R19 R20 K26 ["Enums"]
      221 GETTABLEKS                       R18 R19 K27 ["ButtonSize"]
      223 GETTABLEKS                       R17 R18 K28 ["XSmall"]
      225 SETTABLEKS                       R17 R16 K20 ["size"]
      227 GETUPVAL                         R20 0
      228 GETTABLEKS                       R19 R20 K26 ["Enums"]
      230 GETTABLEKS                       R18 R19 K29 ["ButtonVariant"]
      232 GETTABLEKS                       R17 R18 K30 ["Text"]
      234 SETTABLEKS                       R17 R16 K21 ["variant"]
      236 GETUPVAL                         R20 0
      237 GETTABLEKS                       R19 R20 K26 ["Enums"]
      239 GETTABLEKS                       R18 R19 K31 ["FillBehavior"]
      241 GETTABLEKS                       R17 R18 K32 ["Fill"]
      243 SETTABLEKS                       R17 R16 K22 ["fillBehavior"]
      245 MOVE                             R17 R6
      246 CALL                             R17 0 1
      247 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      249 SETTABLEKS                       R5 R16 K39 ["isDisabled"]
      251 SETTABLEKS                       R2 R16 K23 ["onActivated"]
      253 CALL                             R14 2 1
      254 SETTABLEKS                       R14 R13 K42 ["ClearConversationButton"]
      256 GETUPVAL                         R15 2
      257 GETTABLEKS                       R14 R15 K43 ["useRef"]
      259 LOADNIL                          R15
      260 CALL                             R14 1 1
      261 GETUPVAL                         R16 2
      262 GETTABLEKS                       R15 R16 K44 ["useEffect"]
      264 NEWCLOSURE                       R16 P4
      265 CAPTURE                          VAL R14
      266 NEWTABLE                         R17 0 1
      268 GETTABLEKS                       R18 R14 K45 ["current"]
      270 SETLIST                          R17 R18 1 [1]
      272 CALL                             R15 2 0
      273 LOADK                            R15 K46 ["auto-xy radius-medium padding-small bg-surface-100"]
      274 LOADNIL                          R16
      275 GETUPVAL                         R17 15
      276 CALL                             R17 0 1
      277 JUMPIFNOT                        R17 ; [+23]
      278 MOVE                             R17 R15
      279 LOADK                            R18 K47 [" gap-small"]
      280 CONCAT                           R15 R17 R18
      281 GETUPVAL                         R18 2
      282 GETTABLEKS                       R17 R18 K48 ["createElement"]
      284 LOADK                            R18 K49 ["UIListLayout"]
      285 DUPTABLE                         R19 K53 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      286 GETIMPORT                        R20 K56 [Enum.FillDirection.Vertical]
      288 SETTABLEKS                       R20 R19 K50 ["FillDirection"]
      290 GETIMPORT                        R20 K58 [Enum.HorizontalAlignment.Left]
      292 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      294 GETIMPORT                        R20 K59 [Enum.SortOrder.LayoutOrder]
      296 SETTABLEKS                       R20 R19 K52 ["SortOrder"]
      298 CALL                             R17 2 1
      299 MOVE                             R16 R17
      300 JUMP                             ; [+29]
      301 GETUPVAL                         R18 2
      302 GETTABLEKS                       R17 R18 K48 ["createElement"]
      304 LOADK                            R18 K49 ["UIListLayout"]
      305 DUPTABLE                         R19 K61 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      306 GETIMPORT                        R20 K64 [UDim.new]
      308 LOADN                            R21 0
      309 GETTABLEKS                       R23 R1 K60 ["Padding"]
      311 GETTABLEKS                       R22 R23 K65 ["Small"]
      313 CALL                             R20 2 1
      314 SETTABLEKS                       R20 R19 K60 ["Padding"]
      316 GETIMPORT                        R20 K56 [Enum.FillDirection.Vertical]
      318 SETTABLEKS                       R20 R19 K50 ["FillDirection"]
      320 GETIMPORT                        R20 K58 [Enum.HorizontalAlignment.Left]
      322 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      324 GETIMPORT                        R20 K59 [Enum.SortOrder.LayoutOrder]
      326 SETTABLEKS                       R20 R19 K52 ["SortOrder"]
      328 CALL                             R17 2 1
      329 MOVE                             R16 R17
      330 SETTABLEKS                       R16 R13 K66 ["Layout"]
      332 GETUPVAL                         R17 11
      333 GETUPVAL                         R19 16
      334 GETTABLEKS                       R18 R19 K67 ["Root"]
      336 DUPTABLE                         R19 K69 [{"isOpen"}]
      337 SETTABLEKS                       R8 R19 K68 ["isOpen"]
      339 DUPTABLE                         R20 K72 [{"SettingsAnchor", "Content"}]
      340 GETUPVAL                         R21 11
      341 GETUPVAL                         R23 16
      342 GETTABLEKS                       R22 R23 K73 ["Anchor"]
      344 DUPTABLE                         R23 K74 [{"LayoutOrder"}]
      345 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      347 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      349 DUPTABLE                         R24 K76 [{"Button"}]
      350 GETUPVAL                         R25 11
      351 GETUPVAL                         R26 17
      352 DUPTABLE                         R27 K80 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      353 LOADK                            R28 K81 ["icons/actions/overflow"]
      354 SETTABLEKS                       R28 R27 K77 ["icon"]
      356 LOADK                            R28 K82 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      357 SETTABLEKS                       R28 R27 K12 ["tag"]
      359 LOADK                            R28 K83 ["size-400-400 content-emphasis"]
      360 SETTABLEKS                       R28 R27 K78 ["iconTag"]
      362 GETUPVAL                         R30 18
      363 GETTABLEKS                       R29 R30 K84 ["Header"]
      365 GETTABLEKS                       R28 R29 K85 ["SettingsButton"]
      367 SETTABLEKS                       R28 R27 K79 ["testId"]
      369 NEWCLOSURE                       R28 P5
      370 CAPTURE                          VAL R9
      371 CAPTURE                          VAL R8
      372 SETTABLEKS                       R28 R27 K23 ["onActivated"]
      374 CALL                             R25 2 1
      375 SETTABLEKS                       R25 R24 K75 ["Button"]
      377 CALL                             R21 3 1
      378 SETTABLEKS                       R21 R20 K70 ["SettingsAnchor"]
      380 GETUPVAL                         R21 11
      381 GETUPVAL                         R23 16
      382 GETTABLEKS                       R22 R23 K71 ["Content"]
      384 DUPTABLE                         R23 K90 [{"side", "align", "hasArrow", "onPressedOutside"}]
      385 DUPTABLE                         R24 K93 [{"position", "offset"}]
      386 GETUPVAL                         R28 0
      387 GETTABLEKS                       R27 R28 K26 ["Enums"]
      389 GETTABLEKS                       R26 R27 K94 ["PopoverSide"]
      391 GETTABLEKS                       R25 R26 K95 ["Bottom"]
      393 SETTABLEKS                       R25 R24 K91 ["position"]
      395 GETTABLEKS                       R26 R1 K96 ["Gap"]
      397 GETTABLEKS                       R25 R26 K28 ["XSmall"]
      399 SETTABLEKS                       R25 R24 K92 ["offset"]
      401 SETTABLEKS                       R24 R23 K86 ["side"]
      403 GETUPVAL                         R27 0
      404 GETTABLEKS                       R26 R27 K26 ["Enums"]
      406 GETTABLEKS                       R25 R26 K97 ["PopoverAlign"]
      408 GETTABLEKS                       R24 R25 K98 ["Start"]
      410 SETTABLEKS                       R24 R23 K87 ["align"]
      412 LOADB                            R24 0
      413 SETTABLEKS                       R24 R23 K88 ["hasArrow"]
      415 NEWCLOSURE                       R24 P6
      416 CAPTURE                          VAL R9
      417 SETTABLEKS                       R24 R23 K89 ["onPressedOutside"]
      419 DUPTABLE                         R24 K100 [{"SettingsContent"}]
      420 GETUPVAL                         R25 11
      421 GETUPVAL                         R26 12
      422 DUPTABLE                         R27 K103 [{"tag", "ref", "testId", "sizeConstraint"}]
      423 SETTABLEKS                       R15 R27 K12 ["tag"]
      425 SETTABLEKS                       R14 R27 K101 ["ref"]
      427 GETUPVAL                         R30 18
      428 GETTABLEKS                       R29 R30 K84 ["Header"]
      430 GETTABLEKS                       R28 R29 K99 ["SettingsContent"]
      432 SETTABLEKS                       R28 R27 K79 ["testId"]
      434 DUPTABLE                         R28 K105 [{"MinSize"}]
      435 GETIMPORT                        R29 K107 [Vector2.new]
      437 LOADN                            R30 150
      438 LOADN                            R31 0
      439 CALL                             R29 2 1
      440 SETTABLEKS                       R29 R28 K104 ["MinSize"]
      442 SETTABLEKS                       R28 R27 K102 ["sizeConstraint"]
      444 MOVE                             R28 R13
      445 CALL                             R25 3 1
      446 SETTABLEKS                       R25 R24 K99 ["SettingsContent"]
      448 CALL                             R21 3 1
      449 SETTABLEKS                       R21 R20 K71 ["Content"]
      451 CALL                             R17 3 -1
      452 RETURN                           R17 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showApiKeys"]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R6 3
       10 DUPTABLE                         R7 K4 [{"tag", "LayoutOrder"}]
       11 NEWTABLE                         R8 4 0
       13 LOADB                            R9 1
       14 SETTABLEKS                       R9 R8 K5 ["row size-full-0 auto-y padding-small gap-xsmall"]
       16 GETUPVAL                         R10 4
       17 CALL                             R10 0 1
       18 NOT                              R9 R10
       19 SETTABLEKS                       R9 R8 K6 ["align-x-right"]
       21 GETUPVAL                         R9 4
       22 CALL                             R9 0 1
       23 SETTABLEKS                       R9 R8 K7 ["align-y-center"]
       25 SETTABLEKS                       R8 R7 K2 ["tag"]
       27 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       29 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       31 DUPTABLE                         R8 K12 [{"FillArea", "Expand", "Settings", "DialogWidget"}]
       32 GETUPVAL                         R10 4
       33 CALL                             R10 0 1
       34 JUMPIFNOT                        R10 ; [+23]
       35 GETUPVAL                         R9 2
       36 GETUPVAL                         R10 3
       37 DUPTABLE                         R11 K4 [{"tag", "LayoutOrder"}]
       38 LOADK                            R12 K13 ["fill align-x-left align-y-center"]
       39 SETTABLEKS                       R12 R11 K2 ["tag"]
       41 MOVE                             R12 R1
       42 CALL                             R12 0 1
       43 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       45 DUPTABLE                         R12 K15 [{"ToggleThreadsMenuButton"}]
       46 GETUPVAL                         R13 2
       47 GETUPVAL                         R14 5
       48 DUPTABLE                         R15 K16 [{"LayoutOrder"}]
       49 MOVE                             R16 R1
       50 CALL                             R16 0 1
       51 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K14 ["ToggleThreadsMenuButton"]
       56 CALL                             R9 3 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R9
       59 SETTABLEKS                       R9 R8 K8 ["FillArea"]
       61 GETUPVAL                         R9 2
       62 GETUPVAL                         R10 6
       63 DUPTABLE                         R11 K16 [{"LayoutOrder"}]
       64 MOVE                             R12 R1
       65 CALL                             R12 0 1
       66 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       68 CALL                             R9 2 1
       69 SETTABLEKS                       R9 R8 K9 ["Expand"]
       71 GETUPVAL                         R9 2
       72 GETUPVAL                         R10 7
       73 DUPTABLE                         R11 K17 [{"LayoutOrder", "showIntegrations", "showApiKeys"}]
       74 MOVE                             R12 R1
       75 CALL                             R12 0 1
       76 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       78 SETTABLEKS                       R3 R11 K0 ["showIntegrations"]
       80 SETTABLEKS                       R4 R11 K1 ["showApiKeys"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K10 ["Settings"]
       85 GETTABLEKS                       R9 R2 K18 ["root"]
       87 SETTABLEKS                       R9 R8 K11 ["DialogWidget"]
       89 CALL                             R5 3 -1
       90 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Components"]
       34 GETTABLEKS                       R6 R7 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K12 ["LLMProviderSelectionContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R7 K13 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K15 ["Util"]
       57 GETTABLEKS                       R8 R9 K16 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K6 ["Components"]
       64 GETTABLEKS                       R10 R11 K17 ["ThreadsWindow"]
       66 GETTABLEKS                       R9 R10 K18 ["ToggleThreadsMenuButton"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K19 ["Resources"]
       73 GETTABLEKS                       R11 R12 K20 ["Localization"]
       75 GETTABLEKS                       R10 R11 K21 ["Translator"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K22 ["Types"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       87 GETTABLEKS                       R12 R13 K24 ["useClearConversation"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       94 GETTABLEKS                       R13 R14 K25 ["useEditContent"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R15 K26 ["useGetThread"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      108 GETTABLEKS                       R15 R16 K27 ["useSettingsDialog"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R17 R0 K28 ["Flags"]
      115 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantMultipleChatSupport"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R18 R0 K28 ["Flags"]
      122 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantPersistConversations"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R19 R0 K28 ["Flags"]
      129 GETTABLEKS                       R18 R19 K31 ["FFlagCAP2605"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R20 R0 K28 ["Flags"]
      136 GETTABLEKS                       R19 R20 K32 ["FFlagFoundationDisableStylingPolyfill"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R21 R0 K28 ["Flags"]
      143 GETTABLEKS                       R20 R21 K33 ["FFlagMCPAssistantManagementMenu"]
      145 CALL                             R19 1 1
      146 GETTABLEKS                       R20 R2 K34 ["Button"]
      148 GETTABLEKS                       R21 R2 K35 ["Popover"]
      150 GETTABLEKS                       R22 R2 K36 ["Text"]
      152 GETTABLEKS                       R23 R2 K37 ["View"]
      154 GETTABLEKS                       R24 R6 K38 ["createNextOrder"]
      156 GETTABLEKS                       R25 R5 K39 ["createElement"]
      158 GETTABLEKS                       R26 R3 K40 ["InputDisabledReasons"]
      160 GETTABLEKS                       R27 R10 K41 ["DEFAULT_STUDIO_MODEL"]
      162 DUPTABLE                         R28 K44 [{"Dark", "Light"}]
      163 LOADK                            R29 K45 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      164 SETTABLEKS                       R29 R28 K42 ["Dark"]
      166 LOADK                            R29 K46 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      167 SETTABLEKS                       R29 R28 K43 ["Light"]
      169 DUPCLOSURE                       R29 K47 [PROTO_3]
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R28
      179 DUPCLOSURE                       R30 K48 [PROTO_11]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R26
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R7
      199 DUPCLOSURE                       R31 K49 [PROTO_12]
      200 CAPTURE                          VAL R24
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R29
      207 CAPTURE                          VAL R30
      208 RETURN                           R31 1
