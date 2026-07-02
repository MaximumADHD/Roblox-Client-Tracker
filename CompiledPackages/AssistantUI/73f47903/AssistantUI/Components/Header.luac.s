PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 LOADB                            R2 0
        2 GETTABLEKS                       R3 R0 K0 ["messages"]
        4 MOVE                             R4 R3
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K1 ["contents"]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 FORGPREP                         R9
       13 GETTABLEKS                       R14 R13 K2 ["expanded"]
       15 JUMPIFEQKNIL                     R14 ; [+5]
       17 LOADB                            R1 1
       18 GETTABLEKS                       R2 R13 K2 ["expanded"]
       20 JUMPIF                           R2 ; [+2]
       21 FORGLOOP                         R9 2 ; [-9]
       23 JUMPIF                           R2 ; [+2]
       24 FORGLOOP                         R4 2 ; [-17]
       26 JUMPIFNOT                        R1 ; [+33]
       27 NOT                              R4 R2
       28 MOVE                             R5 R3
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETTABLEKS                       R10 R9 K1 ["contents"]
       34 LOADNIL                          R11
       35 LOADNIL                          R12
       36 FORGPREP                         R10
       37 GETTABLEKS                       R15 R14 K2 ["expanded"]
       39 JUMPIFEQKNIL                     R15 ; [+16]
       41 GETTABLEKS                       R15 R14 K2 ["expanded"]
       43 JUMPIFEQ                         R15 R4 ; [+12]
       45 GETUPVAL                         R15 0
       46 DUPTABLE                         R16 K6 [{"messageId", "contentId", "transformFn"}]
       47 SETTABLEKS                       R8 R16 K3 ["messageId"]
       49 SETTABLEKS                       R13 R16 K4 ["contentId"]
       51 NEWCLOSURE                       R17 P0
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R17 R16 K5 ["transformFn"]
       55 CALL                             R15 1 0
       56 FORGLOOP                         R10 2 ; [-20]
       58 FORGLOOP                         R5 2 ; [-27]
       60 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["Hooks"]
        7 GETTABLEKS                       R3 R3 K1 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R3 K2 ["Config"]
       12 GETTABLEKS                       R4 R4 K3 ["ColorMode"]
       14 GETTABLEKS                       R4 R4 K4 ["Name"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R7 0 2
       24 MOVE                             R8 R1
       25 MOVE                             R9 R2
       26 SETLIST                          R7 R8 2 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 4
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+22]
       32 GETUPVAL                         R6 5
       33 GETUPVAL                         R7 6
       34 DUPTABLE                         R8 K10 [{["tag"] = "align-x-center align-y-center size-600-600 radius-small bg-action-link", ["onActivated"], ["LayoutOrder"]}]
       35 SETTABLEKS                       R5 R8 K8 ["onActivated"]
       37 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       39 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       41 DUPTABLE                         R9 K12 [{"ExpandImage"}]
       42 GETUPVAL                         R10 5
       43 GETUPVAL                         R11 7
       44 DUPTABLE                         R12 K15 [{["tag"] = "size-400-400 content-emphasis", ["Image"]}]
       45 GETUPVAL                         R14 8
       46 GETTABLE                         R13 R14 R4
       47 SETTABLEKS                       R13 R12 K14 ["Image"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K11 ["ExpandImage"]
       52 CALL                             R6 3 -1
       53 RETURN                           R6 -1
       54 GETUPVAL                         R6 5
       55 GETUPVAL                         R7 9
       56 DUPTABLE                         R8 K19 [{["icon"], ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"]}]
       57 GETUPVAL                         R10 8
       58 GETTABLE                         R9 R10 R4
       59 SETTABLEKS                       R9 R8 K16 ["icon"]
       61 SETTABLEKS                       R5 R8 K8 ["onActivated"]
       63 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       65 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedModel"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+8]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["SettingsDialog"]
        8 LOADK                            R3 K2 ["Default"]
        9 NAMECALL                         R0 R0 K3 ["getText"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["selectedModel"]
       16 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R0 K4 [{"ManageIntegrations", "EditApiKeys", "InternalSettings", "ManageSkills"}]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K5 ["IntegrationManagement"]
        5 LOADK                            R4 K0 ["ManageIntegrations"]
        6 NAMECALL                         R1 R1 K6 ["getText"]
        8 CALL                             R1 3 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K7 ["SettingsDialog"]
       15 LOADK                            R4 K1 ["EditApiKeys"]
       16 NAMECALL                         R1 R1 K6 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K1 ["EditApiKeys"]
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETUPVAL                         R1 1
       25 LOADK                            R3 K8 ["InternalFeatures"]
       26 LOADK                            R4 K9 ["Title"]
       27 NAMECALL                         R1 R1 K6 ["getText"]
       29 CALL                             R1 3 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K2 ["InternalSettings"]
       34 GETUPVAL                         R1 1
       35 LOADK                            R3 K10 ["Skills"]
       36 LOADK                            R4 K3 ["ManageSkills"]
       37 NAMECALL                         R1 R1 K6 ["getText"]
       39 CALL                             R1 3 1
       40 SETTABLEKS                       R1 R0 K3 ["ManageSkills"]
       42 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showApiKeys"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showIntegrations"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showSkills"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showInternalSettings"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 LOADK                            R3 K1 ["LayerCollector"]
        9 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 LOADK                            R4 K3 ["AbsoluteSize"]
       15 NAMECALL                         R2 R1 K4 ["GetPropertyChangedSignal"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 NAMECALL                         R2 R2 K5 ["Connect"]
       22 CALL                             R2 2 1
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+18]
       10 LOADK                            R3 K1 ["LayerCollector"]
       11 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+13]
       15 GETTABLEKS                       R2 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R2 K4 ["Y"]
       19 GETUPVAL                         R3 3
       20 CALL                             R3 0 1
       21 JUMPIFNOTLT                      R2 R3 ; [+6]
       23 GETIMPORT                        R2 K6 [warn]
       25 LOADK                            R3 K7 ["Assistant: Widget too small to display settings menu"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 1
       29 LOADB                            R2 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIF                           R2 ; [+5]
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 LOADB                            R4 0
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K3 ["useContext"]
       22 GETUPVAL                         R6 5
       23 GETTABLEKS                       R6 R6 K4 ["Context"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 NEWTABLE                         R8 0 2
       35 GETTABLEKS                       R9 R5 K6 ["selectedModel"]
       37 GETUPVAL                         R10 7
       38 GETTABLEKS                       R10 R10 K7 ["locale"]
       40 SETLIST                          R8 R9 2 [1]
       42 CALL                             R6 2 1
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       46 NEWCLOSURE                       R8 P1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 NEWTABLE                         R9 0 2
       52 GETUPVAL                         R10 7
       53 GETTABLEKS                       R10 R10 K7 ["locale"]
       55 MOVE                             R11 R2
       56 SETLIST                          R9 R10 2 [1]
       58 CALL                             R7 2 1
       59 NEWTABLE                         R8 0 0
       61 GETUPVAL                         R9 9
       62 CALL                             R9 0 1
       63 GETTABLEKS                       R10 R0 K8 ["showApiKeys"]
       65 JUMPIFNOT                        R10 ; [+69]
       66 GETUPVAL                         R10 10
       67 GETUPVAL                         R11 11
       68 DUPTABLE                         R12 K12 [{["tag"] = "col gap-xxsmall auto-xy", ["LayoutOrder"]}]
       69 MOVE                             R13 R9
       70 CALL                             R13 0 1
       71 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       73 DUPTABLE                         R13 K15 [{"EditApiKeysButton", "CurrentModelText"}]
       74 GETUPVAL                         R14 10
       75 GETUPVAL                         R15 12
       76 DUPTABLE                         R16 K21 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
       77 GETTABLEKS                       R17 R7 K22 ["EditApiKeys"]
       79 SETTABLEKS                       R17 R16 K16 ["text"]
       81 GETUPVAL                         R17 0
       82 GETTABLEKS                       R17 R17 K23 ["Enums"]
       84 GETTABLEKS                       R17 R17 K24 ["ButtonSize"]
       86 GETTABLEKS                       R17 R17 K25 ["XSmall"]
       88 SETTABLEKS                       R17 R16 K17 ["size"]
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R17 R17 K23 ["Enums"]
       93 GETTABLEKS                       R17 R17 K26 ["ButtonVariant"]
       95 GETTABLEKS                       R17 R17 K27 ["Text"]
       97 SETTABLEKS                       R17 R16 K18 ["variant"]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R17 R17 K23 ["Enums"]
      102 GETTABLEKS                       R17 R17 K28 ["FillBehavior"]
      104 GETTABLEKS                       R17 R17 K29 ["Fill"]
      106 SETTABLEKS                       R17 R16 K19 ["fillBehavior"]
      108 MOVE                             R17 R9
      109 CALL                             R17 0 1
      110 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      112 NEWCLOSURE                       R17 P2
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R17 R16 K20 ["onActivated"]
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K13 ["EditApiKeysButton"]
      120 GETUPVAL                         R14 10
      121 GETUPVAL                         R15 13
      122 DUPTABLE                         R16 K31 [{["tag"] = "auto-xy padding-left-small text-caption-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      123 SETTABLEKS                       R6 R16 K27 ["Text"]
      125 MOVE                             R17 R9
      126 CALL                             R17 0 1
      127 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K14 ["CurrentModelText"]
      132 CALL                             R10 3 1
      133 SETTABLEKS                       R10 R8 K32 ["EditApiKeysGroup"]
      135 JUMPIFNOT                        R2 ; [+49]
      136 GETTABLEKS                       R10 R0 K33 ["showIntegrations"]
      138 JUMPIFNOT                        R10 ; [+46]
      139 GETUPVAL                         R10 10
      140 GETUPVAL                         R11 12
      141 DUPTABLE                         R12 K21 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      142 GETTABLEKS                       R13 R7 K34 ["ManageIntegrations"]
      144 SETTABLEKS                       R13 R12 K16 ["text"]
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R13 R13 K23 ["Enums"]
      149 GETTABLEKS                       R13 R13 K24 ["ButtonSize"]
      151 GETTABLEKS                       R13 R13 K25 ["XSmall"]
      153 SETTABLEKS                       R13 R12 K17 ["size"]
      155 GETUPVAL                         R13 0
      156 GETTABLEKS                       R13 R13 K23 ["Enums"]
      158 GETTABLEKS                       R13 R13 K26 ["ButtonVariant"]
      160 GETTABLEKS                       R13 R13 K27 ["Text"]
      162 SETTABLEKS                       R13 R12 K18 ["variant"]
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R13 R13 K23 ["Enums"]
      167 GETTABLEKS                       R13 R13 K28 ["FillBehavior"]
      169 GETTABLEKS                       R13 R13 K29 ["Fill"]
      171 SETTABLEKS                       R13 R12 K19 ["fillBehavior"]
      173 MOVE                             R13 R9
      174 CALL                             R13 0 1
      175 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      177 NEWCLOSURE                       R13 P3
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R0
      180 SETTABLEKS                       R13 R12 K20 ["onActivated"]
      182 CALL                             R10 2 1
      183 SETTABLEKS                       R10 R8 K35 ["ManageIntegrationsButton"]
      185 GETTABLEKS                       R10 R0 K36 ["showSkills"]
      187 JUMPIFNOT                        R10 ; [+46]
      188 GETUPVAL                         R10 10
      189 GETUPVAL                         R11 12
      190 DUPTABLE                         R12 K21 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      191 GETTABLEKS                       R13 R7 K37 ["ManageSkills"]
      193 SETTABLEKS                       R13 R12 K16 ["text"]
      195 GETUPVAL                         R13 0
      196 GETTABLEKS                       R13 R13 K23 ["Enums"]
      198 GETTABLEKS                       R13 R13 K24 ["ButtonSize"]
      200 GETTABLEKS                       R13 R13 K25 ["XSmall"]
      202 SETTABLEKS                       R13 R12 K17 ["size"]
      204 GETUPVAL                         R13 0
      205 GETTABLEKS                       R13 R13 K23 ["Enums"]
      207 GETTABLEKS                       R13 R13 K26 ["ButtonVariant"]
      209 GETTABLEKS                       R13 R13 K27 ["Text"]
      211 SETTABLEKS                       R13 R12 K18 ["variant"]
      213 GETUPVAL                         R13 0
      214 GETTABLEKS                       R13 R13 K23 ["Enums"]
      216 GETTABLEKS                       R13 R13 K28 ["FillBehavior"]
      218 GETTABLEKS                       R13 R13 K29 ["Fill"]
      220 SETTABLEKS                       R13 R12 K19 ["fillBehavior"]
      222 MOVE                             R13 R9
      223 CALL                             R13 0 1
      224 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      226 NEWCLOSURE                       R13 P4
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R0
      229 SETTABLEKS                       R13 R12 K20 ["onActivated"]
      231 CALL                             R10 2 1
      232 SETTABLEKS                       R10 R8 K38 ["ManageSkillsButton"]
      234 GETTABLEKS                       R10 R0 K39 ["showInternalSettings"]
      236 JUMPIFNOT                        R10 ; [+46]
      237 GETUPVAL                         R10 10
      238 GETUPVAL                         R11 12
      239 DUPTABLE                         R12 K21 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      240 GETTABLEKS                       R13 R7 K40 ["InternalSettings"]
      242 SETTABLEKS                       R13 R12 K16 ["text"]
      244 GETUPVAL                         R13 0
      245 GETTABLEKS                       R13 R13 K23 ["Enums"]
      247 GETTABLEKS                       R13 R13 K24 ["ButtonSize"]
      249 GETTABLEKS                       R13 R13 K25 ["XSmall"]
      251 SETTABLEKS                       R13 R12 K17 ["size"]
      253 GETUPVAL                         R13 0
      254 GETTABLEKS                       R13 R13 K23 ["Enums"]
      256 GETTABLEKS                       R13 R13 K26 ["ButtonVariant"]
      258 GETTABLEKS                       R13 R13 K27 ["Text"]
      260 SETTABLEKS                       R13 R12 K18 ["variant"]
      262 GETUPVAL                         R13 0
      263 GETTABLEKS                       R13 R13 K23 ["Enums"]
      265 GETTABLEKS                       R13 R13 K28 ["FillBehavior"]
      267 GETTABLEKS                       R13 R13 K29 ["Fill"]
      269 SETTABLEKS                       R13 R12 K19 ["fillBehavior"]
      271 MOVE                             R13 R9
      272 CALL                             R13 0 1
      273 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      275 NEWCLOSURE                       R13 P5
      276 CAPTURE                          VAL R4
      277 CAPTURE                          VAL R0
      278 SETTABLEKS                       R13 R12 K20 ["onActivated"]
      280 CALL                             R10 2 1
      281 SETTABLEKS                       R10 R8 K41 ["InternalSettingsButton"]
      283 GETUPVAL                         R10 4
      284 GETTABLEKS                       R10 R10 K42 ["useRef"]
      286 LOADNIL                          R11
      287 CALL                             R10 1 1
      288 GETUPVAL                         R11 4
      289 GETTABLEKS                       R11 R11 K42 ["useRef"]
      291 LOADNIL                          R12
      292 CALL                             R11 1 1
      293 GETUPVAL                         R12 4
      294 GETTABLEKS                       R12 R12 K43 ["useEffect"]
      296 NEWCLOSURE                       R13 P6
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R10
      299 CAPTURE                          VAL R4
      300 NEWTABLE                         R14 0 1
      302 MOVE                             R15 R3
      303 SETLIST                          R14 R15 1 [1]
      305 CALL                             R12 2 0
      306 GETUPVAL                         R12 4
      307 GETTABLEKS                       R12 R12 K43 ["useEffect"]
      309 NEWCLOSURE                       R13 P7
      310 CAPTURE                          VAL R11
      311 NEWTABLE                         R14 0 1
      313 GETTABLEKS                       R15 R11 K44 ["current"]
      315 SETLIST                          R14 R15 1 [1]
      317 CALL                             R12 2 0
      318 GETUPVAL                         R12 4
      319 GETTABLEKS                       R12 R12 K45 ["useCallback"]
      321 NEWCLOSURE                       R13 P8
      322 CAPTURE                          VAL R3
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R10
      325 CAPTURE                          UPVAL U14
      326 NEWTABLE                         R14 0 1
      328 MOVE                             R15 R3
      329 SETLIST                          R14 R15 1 [1]
      331 CALL                             R12 2 1
      332 GETUPVAL                         R13 10
      333 GETUPVAL                         R14 15
      334 GETTABLEKS                       R14 R14 K46 ["Root"]
      336 DUPTABLE                         R15 K48 [{"isOpen"}]
      337 SETTABLEKS                       R3 R15 K47 ["isOpen"]
      339 DUPTABLE                         R16 K51 [{"SettingsAnchor", "Content"}]
      340 GETUPVAL                         R17 10
      341 GETUPVAL                         R18 15
      342 GETTABLEKS                       R18 R18 K52 ["Anchor"]
      344 DUPTABLE                         R19 K54 [{"LayoutOrder", "ref"}]
      345 GETTABLEKS                       R20 R0 K11 ["LayoutOrder"]
      347 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      349 SETTABLEKS                       R10 R19 K53 ["ref"]
      351 DUPTABLE                         R20 K56 [{"Button"}]
      352 GETUPVAL                         R22 16
      353 CALL                             R22 0 1
      354 JUMPIFNOT                        R22 ; [+41]
      355 GETUPVAL                         R21 10
      356 GETUPVAL                         R22 17
      357 DUPTABLE                         R23 K59 [{"icon", "size", "variant", "onActivated", "testId"}]
      358 GETUPVAL                         R24 0
      359 GETTABLEKS                       R24 R24 K23 ["Enums"]
      361 GETTABLEKS                       R24 R24 K60 ["IconName"]
      363 GETTABLEKS                       R24 R24 K61 ["ThreeDotsHorizontal"]
      365 SETTABLEKS                       R24 R23 K57 ["icon"]
      367 GETUPVAL                         R24 0
      368 GETTABLEKS                       R24 R24 K23 ["Enums"]
      370 GETTABLEKS                       R24 R24 K62 ["InputSize"]
      372 GETTABLEKS                       R24 R24 K25 ["XSmall"]
      374 SETTABLEKS                       R24 R23 K17 ["size"]
      376 GETUPVAL                         R24 0
      377 GETTABLEKS                       R24 R24 K23 ["Enums"]
      379 GETTABLEKS                       R24 R24 K26 ["ButtonVariant"]
      381 GETTABLEKS                       R24 R24 K63 ["Utility"]
      383 SETTABLEKS                       R24 R23 K18 ["variant"]
      385 SETTABLEKS                       R12 R23 K20 ["onActivated"]
      387 GETUPVAL                         R24 18
      388 GETTABLEKS                       R24 R24 K64 ["Header"]
      390 GETTABLEKS                       R24 R24 K65 ["SettingsButton"]
      392 SETTABLEKS                       R24 R23 K58 ["testId"]
      394 CALL                             R21 2 1
      395 JUMP                             ; [+13]
      396 GETUPVAL                         R21 10
      397 GETUPVAL                         R22 19
      398 DUPTABLE                         R23 K70 [{["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["testId"], ["onActivated"]}]
      399 GETUPVAL                         R24 18
      400 GETTABLEKS                       R24 R24 K64 ["Header"]
      402 GETTABLEKS                       R24 R24 K65 ["SettingsButton"]
      404 SETTABLEKS                       R24 R23 K58 ["testId"]
      406 SETTABLEKS                       R12 R23 K20 ["onActivated"]
      408 CALL                             R21 2 1
      409 SETTABLEKS                       R21 R20 K55 ["Button"]
      411 CALL                             R17 3 1
      412 SETTABLEKS                       R17 R16 K49 ["SettingsAnchor"]
      414 GETUPVAL                         R17 10
      415 GETUPVAL                         R18 15
      416 GETTABLEKS                       R18 R18 K50 ["Content"]
      418 DUPTABLE                         R19 K76 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      419 DUPTABLE                         R20 K79 [{"position", "offset"}]
      420 GETUPVAL                         R21 0
      421 GETTABLEKS                       R21 R21 K23 ["Enums"]
      423 GETTABLEKS                       R21 R21 K80 ["PopoverSide"]
      425 GETTABLEKS                       R21 R21 K81 ["Bottom"]
      427 SETTABLEKS                       R21 R20 K77 ["position"]
      429 GETTABLEKS                       R21 R1 K82 ["Gap"]
      431 GETTABLEKS                       R21 R21 K25 ["XSmall"]
      433 SETTABLEKS                       R21 R20 K78 ["offset"]
      435 SETTABLEKS                       R20 R19 K71 ["side"]
      437 GETUPVAL                         R20 0
      438 GETTABLEKS                       R20 R20 K23 ["Enums"]
      440 GETTABLEKS                       R20 R20 K83 ["PopoverAlign"]
      442 GETTABLEKS                       R20 R20 K84 ["Start"]
      444 SETTABLEKS                       R20 R19 K72 ["align"]
      446 NEWCLOSURE                       R20 P9
      447 CAPTURE                          VAL R4
      448 SETTABLEKS                       R20 R19 K75 ["onPressedOutside"]
      450 DUPTABLE                         R20 K86 [{"SettingsContent"}]
      451 GETUPVAL                         R21 10
      452 GETUPVAL                         R22 11
      453 DUPTABLE                         R23 K89 [{["tag"] = "col align-x-left gap-small auto-xy padding-small radius-medium bg-surface-100", ["ref"], ["testId"], ["sizeConstraint"]}]
      454 SETTABLEKS                       R11 R23 K53 ["ref"]
      456 GETUPVAL                         R24 18
      457 GETTABLEKS                       R24 R24 K64 ["Header"]
      459 GETTABLEKS                       R24 R24 K85 ["SettingsContent"]
      461 SETTABLEKS                       R24 R23 K58 ["testId"]
      463 DUPTABLE                         R24 K91 [{"MinSize"}]
      464 GETIMPORT                        R25 K94 [Vector2.new]
      466 LOADN                            R26 150
      467 LOADN                            R27 0
      468 CALL                             R25 2 1
      469 SETTABLEKS                       R25 R24 K90 ["MinSize"]
      471 SETTABLEKS                       R24 R23 K88 ["sizeConstraint"]
      473 MOVE                             R24 R8
      474 CALL                             R21 3 1
      475 SETTABLEKS                       R21 R20 K85 ["SettingsContent"]
      477 CALL                             R17 3 1
      478 SETTABLEKS                       R17 R16 K50 ["Content"]
      480 CALL                             R13 3 -1
      481 RETURN                           R13 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getVersionMismatch"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["VersionMismatchChanged"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R0 R0 K2 ["Connect"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_21:
        0 DUPTABLE                         R0 K1 [{"VersionMismatchWarning"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["VersionMismatch"]
        3 LOADK                            R4 K0 ["VersionMismatchWarning"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["VersionMismatchWarning"]
        9 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Enums"]
        5 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        7 GETTABLEKS                       R3 R3 K2 ["Hover"]
        9 JUMPIFEQ                         R0 R3 ; [+12]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["Enums"]
       14 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       16 GETTABLEKS                       R3 R3 K3 ["Pressed"]
       18 JUMPIFEQ                         R0 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 LOADB                            R5 0
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U2
       22 NEWTABLE                         R8 0 0
       24 CALL                             R6 2 0
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       28 DUPCLOSURE                       R7 K5 [PROTO_21]
       29 CAPTURE                          UPVAL U3
       30 NEWTABLE                         R8 0 1
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K6 ["locale"]
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 1
       38 JUMPIF                           R4 ; [+15]
       39 GETUPVAL                         R7 4
       40 GETUPVAL                         R8 5
       41 DUPTABLE                         R9 K11 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K12 ["getVersion"]
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K9 ["Text"]
       48 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       50 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1
       54 GETUPVAL                         R7 6
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 4
       57 GETUPVAL                         R9 7
       58 GETTABLEKS                       R9 R9 K13 ["Root"]
       60 DUPTABLE                         R10 K15 [{"isOpen"}]
       61 SETTABLEKS                       R2 R10 K14 ["isOpen"]
       63 DUPTABLE                         R11 K18 [{"SettingsAnchor", "Content"}]
       64 GETUPVAL                         R12 4
       65 GETUPVAL                         R13 7
       66 GETTABLEKS                       R13 R13 K19 ["Anchor"]
       68 DUPTABLE                         R14 K20 [{"LayoutOrder"}]
       69 GETTABLEKS                       R15 R0 K10 ["LayoutOrder"]
       71 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       73 DUPTABLE                         R15 K22 [{"Background"}]
       74 GETUPVAL                         R16 4
       75 GETUPVAL                         R17 8
       76 DUPTABLE                         R18 K25 [{["tag"] = "row align-x-center align-y-center gap-xsmall auto-xy padding-xsmall radius-medium", ["onStateChanged"], ["LayoutOrder"]}]
       77 NEWCLOSURE                       R19 P2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          UPVAL U0
       80 SETTABLEKS                       R19 R18 K24 ["onStateChanged"]
       82 MOVE                             R19 R7
       83 CALL                             R19 0 1
       84 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
       86 DUPTABLE                         R19 K28 [{"Icon", "Version"}]
       87 GETUPVAL                         R20 4
       88 GETUPVAL                         R21 9
       89 DUPTABLE                         R22 K33 [{"name", "style", "size", "LayoutOrder", "testId"}]
       90 GETUPVAL                         R23 0
       91 GETTABLEKS                       R23 R23 K34 ["Enums"]
       93 GETTABLEKS                       R23 R23 K35 ["IconName"]
       95 GETTABLEKS                       R23 R23 K36 ["TriangleExclamation"]
       97 SETTABLEKS                       R23 R22 K29 ["name"]
       99 GETTABLEKS                       R23 R1 K37 ["Color"]
      101 GETTABLEKS                       R23 R23 K38 ["System"]
      103 GETTABLEKS                       R23 R23 K39 ["Warning"]
      105 SETTABLEKS                       R23 R22 K30 ["style"]
      107 GETUPVAL                         R23 0
      108 GETTABLEKS                       R23 R23 K34 ["Enums"]
      110 GETTABLEKS                       R23 R23 K40 ["IconSize"]
      112 GETTABLEKS                       R23 R23 K41 ["Medium"]
      114 SETTABLEKS                       R23 R22 K31 ["size"]
      116 MOVE                             R23 R7
      117 CALL                             R23 0 1
      118 SETTABLEKS                       R23 R22 K10 ["LayoutOrder"]
      120 GETUPVAL                         R23 10
      121 GETTABLEKS                       R23 R23 K42 ["Header"]
      123 GETTABLEKS                       R23 R23 K43 ["VersionMismatchIcon"]
      125 SETTABLEKS                       R23 R22 K32 ["testId"]
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K26 ["Icon"]
      130 GETUPVAL                         R20 4
      131 GETUPVAL                         R21 5
      132 DUPTABLE                         R22 K45 [{["tag"] = "auto-xy text-caption-small content-system-warning", ["Text"], ["LayoutOrder"]}]
      133 GETUPVAL                         R23 2
      134 GETTABLEKS                       R23 R23 K12 ["getVersion"]
      136 CALL                             R23 0 1
      137 SETTABLEKS                       R23 R22 K9 ["Text"]
      139 MOVE                             R23 R7
      140 CALL                             R23 0 1
      141 SETTABLEKS                       R23 R22 K10 ["LayoutOrder"]
      143 CALL                             R20 2 1
      144 SETTABLEKS                       R20 R19 K27 ["Version"]
      146 CALL                             R16 3 1
      147 SETTABLEKS                       R16 R15 K21 ["Background"]
      149 CALL                             R12 3 1
      150 SETTABLEKS                       R12 R11 K16 ["SettingsAnchor"]
      152 GETUPVAL                         R12 4
      153 GETUPVAL                         R13 7
      154 GETTABLEKS                       R13 R13 K17 ["Content"]
      156 DUPTABLE                         R14 K51 [{["side"], ["align"], ["backgroundStyle"], ["hasArrow"] = False}]
      157 DUPTABLE                         R15 K54 [{"position", "offset"}]
      158 GETUPVAL                         R16 0
      159 GETTABLEKS                       R16 R16 K34 ["Enums"]
      161 GETTABLEKS                       R16 R16 K55 ["PopoverSide"]
      163 GETTABLEKS                       R16 R16 K56 ["Bottom"]
      165 SETTABLEKS                       R16 R15 K52 ["position"]
      167 GETTABLEKS                       R16 R1 K57 ["Gap"]
      169 GETTABLEKS                       R16 R16 K58 ["XSmall"]
      171 SETTABLEKS                       R16 R15 K53 ["offset"]
      173 SETTABLEKS                       R15 R14 K46 ["side"]
      175 GETUPVAL                         R15 0
      176 GETTABLEKS                       R15 R15 K34 ["Enums"]
      178 GETTABLEKS                       R15 R15 K59 ["PopoverAlign"]
      180 GETTABLEKS                       R15 R15 K60 ["Center"]
      182 SETTABLEKS                       R15 R14 K47 ["align"]
      184 GETTABLEKS                       R15 R1 K37 ["Color"]
      186 GETTABLEKS                       R15 R15 K61 ["Surface"]
      188 GETTABLEKS                       R15 R15 K62 ["Surface_300"]
      190 SETTABLEKS                       R15 R14 K48 ["backgroundStyle"]
      192 DUPTABLE                         R15 K63 [{"Text"}]
      193 GETUPVAL                         R16 4
      194 GETUPVAL                         R17 5
      195 DUPTABLE                         R18 K65 [{["tag"] = "auto-xy padding-xsmall text-caption-medium text-wrap text-align-x-center content-warning", ["Text"], ["LayoutOrder"]}]
      196 GETTABLEKS                       R19 R6 K66 ["VersionMismatchWarning"]
      198 SETTABLEKS                       R19 R18 K9 ["Text"]
      200 MOVE                             R19 R7
      201 CALL                             R19 0 1
      202 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      204 CALL                             R16 2 1
      205 SETTABLEKS                       R16 R15 K9 ["Text"]
      207 CALL                             R12 3 1
      208 SETTABLEKS                       R12 R11 K17 ["Content"]
      210 CALL                             R8 3 -1
      211 RETURN                           R8 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["get"]
        8 CALL                             R0 0 1
        9 GETTABLEKS                       R0 R0 K1 ["hasInternalPermission"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K2 ["showInternalSettings"]
       16 RETURN                           R0 1
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showApiKeys"]
        8 GETUPVAL                         R6 2
        9 CALL                             R6 0 1
       10 JUMPIFNOT                        R6 ; [+3]
       11 GETTABLEKS                       R5 R2 K2 ["showSkills"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R5
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 0 0
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 6
       26 GETUPVAL                         R8 7
       27 DUPTABLE                         R9 K7 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       28 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       32 DUPTABLE                         R10 K13 [{"FillArea", "Version", "Expand", "Settings", "DialogWidget"}]
       33 GETUPVAL                         R11 6
       34 GETUPVAL                         R12 7
       35 DUPTABLE                         R13 K15 [{["tag"] = "align-x-left align-y-center fill auto-y", ["LayoutOrder"]}]
       36 MOVE                             R14 R1
       37 CALL                             R14 0 1
       38 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       40 DUPTABLE                         R14 K17 [{"ToggleThreadsMenuButton"}]
       41 GETUPVAL                         R15 6
       42 GETUPVAL                         R16 8
       43 DUPTABLE                         R17 K18 [{"LayoutOrder"}]
       44 MOVE                             R18 R1
       45 CALL                             R18 0 1
       46 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       48 CALL                             R15 2 1
       49 SETTABLEKS                       R15 R14 K16 ["ToggleThreadsMenuButton"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K8 ["FillArea"]
       54 GETUPVAL                         R12 9
       55 CALL                             R12 0 1
       56 JUMPIFNOT                        R12 ; [+9]
       57 GETUPVAL                         R11 6
       58 GETUPVAL                         R12 10
       59 DUPTABLE                         R13 K18 [{"LayoutOrder"}]
       60 MOVE                             R14 R1
       61 CALL                             R14 0 1
       62 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       64 CALL                             R11 2 1
       65 JUMP                             ; [+14]
       66 GETUPVAL                         R11 6
       67 GETUPVAL                         R12 11
       68 DUPTABLE                         R13 K21 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
       69 GETUPVAL                         R14 12
       70 GETTABLEKS                       R14 R14 K22 ["getVersion"]
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K20 ["Text"]
       75 MOVE                             R14 R1
       76 CALL                             R14 0 1
       77 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K9 ["Version"]
       82 GETUPVAL                         R11 6
       83 GETUPVAL                         R12 13
       84 DUPTABLE                         R13 K18 [{"LayoutOrder"}]
       85 MOVE                             R14 R1
       86 CALL                             R14 0 1
       87 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K10 ["Expand"]
       92 GETUPVAL                         R11 6
       93 GETUPVAL                         R12 14
       94 DUPTABLE                         R13 K24 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings", "showSkills"}]
       95 MOVE                             R14 R1
       96 CALL                             R14 0 1
       97 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       99 SETTABLEKS                       R3 R13 K0 ["showIntegrations"]
      101 SETTABLEKS                       R4 R13 K1 ["showApiKeys"]
      103 SETTABLEKS                       R6 R13 K23 ["showInternalSettings"]
      105 SETTABLEKS                       R5 R13 K2 ["showSkills"]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K11 ["Settings"]
      110 GETTABLEKS                       R11 R2 K25 ["root"]
      112 SETTABLEKS                       R11 R10 K12 ["DialogWidget"]
      114 CALL                             R7 3 -1
      115 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["LLMProviderSelectionContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["TestIds"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ThreadsWindow"]
       57 GETTABLEKS                       R8 R8 K17 ["ToggleThreadsMenuButton"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Resources"]
       64 GETTABLEKS                       R9 R9 K19 ["Localization"]
       66 GETTABLEKS                       R9 R9 K20 ["Translator"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K21 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K14 ["Util"]
       78 GETTABLEKS                       R11 R11 K22 ["VersionResolver"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K24 ["useEditContent"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K25 ["useGetThread"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K26 ["useSettingsDialog"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Guest"]
      106 GETTABLEKS                       R15 R15 K28 ["Environment"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K29 ["Flags"]
      113 GETTABLEKS                       R16 R16 K30 ["FFlagAssistantMultiEditExternalClient"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K29 ["Flags"]
      120 GETTABLEKS                       R17 R17 K31 ["FFlagAssistantPrivilegedCodeExecution"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K29 ["Flags"]
      127 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantUseBuilderIcons"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K29 ["Flags"]
      134 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantUserSkills"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K29 ["Flags"]
      141 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantVersionMismatchWarning"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K29 ["Flags"]
      148 GETTABLEKS                       R21 R21 K35 ["FFlagExternalMCPUI"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K29 ["Flags"]
      155 GETTABLEKS                       R22 R22 K36 ["FFlagMCPAssistantManagementMenu"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K29 ["Flags"]
      162 GETTABLEKS                       R23 R23 K37 ["FIntAssistantMinPopoverHeight"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R2 K38 ["Button"]
      167 GETTABLEKS                       R24 R2 K39 ["Icon"]
      169 GETTABLEKS                       R25 R2 K40 ["IconButton"]
      171 GETTABLEKS                       R26 R2 K41 ["Image"]
      173 GETTABLEKS                       R27 R2 K42 ["Popover"]
      175 GETTABLEKS                       R28 R2 K43 ["Text"]
      177 GETTABLEKS                       R29 R2 K44 ["View"]
      179 GETTABLEKS                       R30 R5 K45 ["createNextOrder"]
      181 GETTABLEKS                       R31 R4 K46 ["createElement"]
      183 GETTABLEKS                       R32 R9 K47 ["DEFAULT_STUDIO_MODEL"]
      185 DUPCLOSURE                       R33 K48 [PROTO_0]
      186 CAPTURE                          VAL R22
      187 DUPTABLE                         R34 K53 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"}]
      188 DUPCLOSURE                       R35 K54 [PROTO_4]
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R31
      195 CAPTURE                          VAL R29
      196 CAPTURE                          VAL R26
      197 CAPTURE                          VAL R34
      198 CAPTURE                          VAL R1
      199 DUPCLOSURE                       R36 K55 [PROTO_17]
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R32
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R31
      211 CAPTURE                          VAL R29
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R1
      220 DUPCLOSURE                       R37 K56 [PROTO_23]
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R30
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R29
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R6
      232 DUPCLOSURE                       R38 K57 [PROTO_25]
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R13
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R31
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R37
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R35
      247 CAPTURE                          VAL R36
      248 RETURN                           R38 1
