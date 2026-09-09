PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FIntAssistantMinPopoverHeight"]
        3 RETURN                           R0 1

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
       30 GETTABLEKS                       R6 R6 K6 ["FFlagAssistantUseBuilderIcons"]
       32 JUMPIFNOT                        R6 ; [+22]
       33 GETUPVAL                         R6 5
       34 GETUPVAL                         R7 6
       35 DUPTABLE                         R8 K11 [{["tag"] = "align-x-center align-y-center size-600-600 radius-small bg-action-link", ["onActivated"], ["LayoutOrder"]}]
       36 SETTABLEKS                       R5 R8 K9 ["onActivated"]
       38 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       40 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       42 DUPTABLE                         R9 K13 [{"ExpandImage"}]
       43 GETUPVAL                         R10 5
       44 GETUPVAL                         R11 7
       45 DUPTABLE                         R12 K16 [{["tag"] = "size-400-400 content-emphasis", ["Image"]}]
       46 GETUPVAL                         R14 8
       47 GETTABLE                         R13 R14 R4
       48 SETTABLEKS                       R13 R12 K15 ["Image"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K12 ["ExpandImage"]
       53 CALL                             R6 3 -1
       54 RETURN                           R6 -1
       55 GETUPVAL                         R6 5
       56 GETUPVAL                         R7 9
       57 DUPTABLE                         R8 K20 [{["icon"], ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"]}]
       58 GETUPVAL                         R10 8
       59 GETTABLE                         R9 R10 R4
       60 SETTABLEKS                       R9 R8 K17 ["icon"]
       62 SETTABLEKS                       R5 R8 K9 ["onActivated"]
       64 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       66 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       68 CALL                             R6 2 -1
       69 RETURN                           R6 -1

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
        0 DUPTABLE                         R0 K6 [{"ManageIntegrations", "EditApiKeys", "InternalSettings", "ManageSkills", "AssistantSettings", "Usage"}]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K7 ["IntegrationManagement"]
        5 LOADK                            R4 K0 ["ManageIntegrations"]
        6 NAMECALL                         R1 R1 K8 ["getText"]
        8 CALL                             R1 3 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K9 ["SettingsDialog"]
       15 LOADK                            R4 K1 ["EditApiKeys"]
       16 NAMECALL                         R1 R1 K8 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K1 ["EditApiKeys"]
       21 GETUPVAL                         R1 1
       22 LOADK                            R3 K10 ["InternalFeatures"]
       23 LOADK                            R4 K11 ["Title"]
       24 NAMECALL                         R1 R1 K8 ["getText"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K2 ["InternalSettings"]
       29 GETUPVAL                         R1 1
       30 LOADK                            R3 K12 ["Skills"]
       31 LOADK                            R4 K3 ["ManageSkills"]
       32 NAMECALL                         R1 R1 K8 ["getText"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K3 ["ManageSkills"]
       37 GETUPVAL                         R1 1
       38 LOADK                            R3 K9 ["SettingsDialog"]
       39 LOADK                            R4 K13 ["OverflowMenuTitle"]
       40 NAMECALL                         R1 R1 K8 ["getText"]
       42 CALL                             R1 3 1
       43 SETTABLEKS                       R1 R0 K4 ["AssistantSettings"]
       45 GETUPVAL                         R1 1
       46 LOADK                            R3 K14 ["CreditMetering"]
       47 LOADK                            R4 K15 ["UsageTitle"]
       48 NAMECALL                         R1 R1 K8 ["getText"]
       50 CALL                             R1 3 1
       51 SETTABLEKS                       R1 R0 K5 ["Usage"]
       53 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K0 ["CreditMetering"]
        9 LOADK                            R3 K1 ["FreeUsagePercent"]
       10 DUPTABLE                         R4 K3 [{"percent"}]
       11 GETIMPORT                        R5 K6 [string.format]
       13 LOADK                            R6 K7 ["%d"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K8 ["getPercentUsed"]
       17 GETUPVAL                         R8 1
       18 CALL                             R7 1 -1
       19 CALL                             R5 -1 1
       20 SETTABLEKS                       R5 R4 K2 ["percent"]
       22 NAMECALL                         R0 R0 K9 ["getText"]
       24 CALL                             R0 4 -1
       25 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showSettings"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showIntegrations"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showSkills"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showInternalSettings"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+19]
       10 LOADK                            R3 K1 ["LayerCollector"]
       11 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+14]
       15 GETTABLEKS                       R2 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R2 K4 ["Y"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["FIntAssistantMinPopoverHeight"]
       22 JUMPIFNOTLT                      R2 R3 ; [+6]
       24 GETIMPORT                        R2 K7 [warn]
       26 LOADK                            R3 K8 ["Assistant: Widget too small to display settings menu"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 1
       30 LOADB                            R2 1
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["FFlagMCPAssistantManagementMenu"]
        9 JUMPIF                           R2 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantMultiEditExternalClient"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["useState"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K5 ["useContext"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K6 ["Context"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 NEWTABLE                         R8 0 2
       37 GETTABLEKS                       R9 R5 K8 ["selectedModel"]
       39 GETUPVAL                         R10 6
       40 GETTABLEKS                       R10 R10 K9 ["locale"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K5 ["useContext"]
       48 GETUPVAL                         R8 7
       49 GETTABLEKS                       R8 R8 K6 ["Context"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K10 ["quotaSummary"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U6
       60 NEWTABLE                         R11 0 2
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R12 R12 K9 ["locale"]
       65 MOVE                             R13 R2
       66 SETLIST                          R11 R12 2 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       72 NEWCLOSURE                       R11 P2
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          VAL R8
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U9
       77 NEWTABLE                         R12 0 2
       79 MOVE                             R13 R8
       80 GETUPVAL                         R14 6
       81 GETTABLEKS                       R14 R14 K9 ["locale"]
       83 SETLIST                          R12 R13 2 [1]
       85 CALL                             R10 2 1
       86 NEWTABLE                         R11 0 0
       88 GETUPVAL                         R12 10
       89 CALL                             R12 0 1
       90 GETUPVAL                         R13 8
       91 CALL                             R13 0 1
       92 JUMPIFNOT                        R13 ; [+32]
       93 GETTABLEKS                       R13 R0 K11 ["showSettings"]
       95 JUMPIFNOT                        R13 ; [+249]
       96 GETTABLEKS                       R13 R0 K11 ["showSettings"]
       98 GETUPVAL                         R14 11
       99 GETUPVAL                         R15 12
      100 DUPTABLE                         R16 K16 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-small padding-y-xsmall radius-small", ["LayoutOrder"], ["onActivated"]}]
      101 MOVE                             R17 R12
      102 CALL                             R17 0 1
      103 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      105 NEWCLOSURE                       R17 P3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R13
      108 SETTABLEKS                       R17 R16 K15 ["onActivated"]
      110 DUPTABLE                         R17 K18 [{"Label"}]
      111 GETUPVAL                         R18 11
      112 GETUPVAL                         R19 13
      113 DUPTABLE                         R20 K22 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      114 GETTABLEKS                       R21 R9 K23 ["AssistantSettings"]
      116 SETTABLEKS                       R21 R20 K20 ["Text"]
      118 CALL                             R18 2 1
      119 SETTABLEKS                       R18 R17 K17 ["Label"]
      121 CALL                             R14 3 1
      122 SETTABLEKS                       R14 R11 K24 ["AssistantSettingsRow"]
      124 JUMP                             ; [+220]
      125 GETTABLEKS                       R13 R0 K11 ["showSettings"]
      127 JUMPIFNOT                        R13 ; [+69]
      128 GETUPVAL                         R13 11
      129 GETUPVAL                         R14 12
      130 DUPTABLE                         R15 K26 [{["tag"] = "col gap-xxsmall auto-xy", ["LayoutOrder"]}]
      131 MOVE                             R16 R12
      132 CALL                             R16 0 1
      133 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      135 DUPTABLE                         R16 K29 [{"EditApiKeysButton", "CurrentModelText"}]
      136 GETUPVAL                         R17 11
      137 GETUPVAL                         R18 14
      138 DUPTABLE                         R19 K34 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      139 GETTABLEKS                       R20 R9 K35 ["EditApiKeys"]
      141 SETTABLEKS                       R20 R19 K30 ["text"]
      143 GETUPVAL                         R20 0
      144 GETTABLEKS                       R20 R20 K36 ["Enums"]
      146 GETTABLEKS                       R20 R20 K37 ["ButtonSize"]
      148 GETTABLEKS                       R20 R20 K38 ["XSmall"]
      150 SETTABLEKS                       R20 R19 K31 ["size"]
      152 GETUPVAL                         R20 0
      153 GETTABLEKS                       R20 R20 K36 ["Enums"]
      155 GETTABLEKS                       R20 R20 K39 ["ButtonVariant"]
      157 GETTABLEKS                       R20 R20 K20 ["Text"]
      159 SETTABLEKS                       R20 R19 K32 ["variant"]
      161 GETUPVAL                         R20 0
      162 GETTABLEKS                       R20 R20 K36 ["Enums"]
      164 GETTABLEKS                       R20 R20 K40 ["FillBehavior"]
      166 GETTABLEKS                       R20 R20 K41 ["Fill"]
      168 SETTABLEKS                       R20 R19 K33 ["fillBehavior"]
      170 MOVE                             R20 R12
      171 CALL                             R20 0 1
      172 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      174 NEWCLOSURE                       R20 P4
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R0
      177 SETTABLEKS                       R20 R19 K15 ["onActivated"]
      179 CALL                             R17 2 1
      180 SETTABLEKS                       R17 R16 K27 ["EditApiKeysButton"]
      182 GETUPVAL                         R17 11
      183 GETUPVAL                         R18 13
      184 DUPTABLE                         R19 K43 [{["tag"] = "auto-xy padding-left-small text-caption-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      185 SETTABLEKS                       R6 R19 K20 ["Text"]
      187 MOVE                             R20 R12
      188 CALL                             R20 0 1
      189 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      191 CALL                             R17 2 1
      192 SETTABLEKS                       R17 R16 K28 ["CurrentModelText"]
      194 CALL                             R13 3 1
      195 SETTABLEKS                       R13 R11 K44 ["EditApiKeysGroup"]
      197 JUMPIFNOT                        R2 ; [+49]
      198 GETTABLEKS                       R13 R0 K45 ["showIntegrations"]
      200 JUMPIFNOT                        R13 ; [+46]
      201 GETUPVAL                         R13 11
      202 GETUPVAL                         R14 14
      203 DUPTABLE                         R15 K34 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      204 GETTABLEKS                       R16 R9 K46 ["ManageIntegrations"]
      206 SETTABLEKS                       R16 R15 K30 ["text"]
      208 GETUPVAL                         R16 0
      209 GETTABLEKS                       R16 R16 K36 ["Enums"]
      211 GETTABLEKS                       R16 R16 K37 ["ButtonSize"]
      213 GETTABLEKS                       R16 R16 K38 ["XSmall"]
      215 SETTABLEKS                       R16 R15 K31 ["size"]
      217 GETUPVAL                         R16 0
      218 GETTABLEKS                       R16 R16 K36 ["Enums"]
      220 GETTABLEKS                       R16 R16 K39 ["ButtonVariant"]
      222 GETTABLEKS                       R16 R16 K20 ["Text"]
      224 SETTABLEKS                       R16 R15 K32 ["variant"]
      226 GETUPVAL                         R16 0
      227 GETTABLEKS                       R16 R16 K36 ["Enums"]
      229 GETTABLEKS                       R16 R16 K40 ["FillBehavior"]
      231 GETTABLEKS                       R16 R16 K41 ["Fill"]
      233 SETTABLEKS                       R16 R15 K33 ["fillBehavior"]
      235 MOVE                             R16 R12
      236 CALL                             R16 0 1
      237 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      239 NEWCLOSURE                       R16 P5
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R0
      242 SETTABLEKS                       R16 R15 K15 ["onActivated"]
      244 CALL                             R13 2 1
      245 SETTABLEKS                       R13 R11 K47 ["ManageIntegrationsButton"]
      247 GETTABLEKS                       R13 R0 K48 ["showSkills"]
      249 JUMPIFNOT                        R13 ; [+46]
      250 GETUPVAL                         R13 11
      251 GETUPVAL                         R14 14
      252 DUPTABLE                         R15 K34 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      253 GETTABLEKS                       R16 R9 K49 ["ManageSkills"]
      255 SETTABLEKS                       R16 R15 K30 ["text"]
      257 GETUPVAL                         R16 0
      258 GETTABLEKS                       R16 R16 K36 ["Enums"]
      260 GETTABLEKS                       R16 R16 K37 ["ButtonSize"]
      262 GETTABLEKS                       R16 R16 K38 ["XSmall"]
      264 SETTABLEKS                       R16 R15 K31 ["size"]
      266 GETUPVAL                         R16 0
      267 GETTABLEKS                       R16 R16 K36 ["Enums"]
      269 GETTABLEKS                       R16 R16 K39 ["ButtonVariant"]
      271 GETTABLEKS                       R16 R16 K20 ["Text"]
      273 SETTABLEKS                       R16 R15 K32 ["variant"]
      275 GETUPVAL                         R16 0
      276 GETTABLEKS                       R16 R16 K36 ["Enums"]
      278 GETTABLEKS                       R16 R16 K40 ["FillBehavior"]
      280 GETTABLEKS                       R16 R16 K41 ["Fill"]
      282 SETTABLEKS                       R16 R15 K33 ["fillBehavior"]
      284 MOVE                             R16 R12
      285 CALL                             R16 0 1
      286 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      288 NEWCLOSURE                       R16 P6
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R0
      291 SETTABLEKS                       R16 R15 K15 ["onActivated"]
      293 CALL                             R13 2 1
      294 SETTABLEKS                       R13 R11 K50 ["ManageSkillsButton"]
      296 GETTABLEKS                       R13 R0 K51 ["showInternalSettings"]
      298 JUMPIFNOT                        R13 ; [+46]
      299 GETUPVAL                         R13 11
      300 GETUPVAL                         R14 14
      301 DUPTABLE                         R15 K34 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      302 GETTABLEKS                       R16 R9 K52 ["InternalSettings"]
      304 SETTABLEKS                       R16 R15 K30 ["text"]
      306 GETUPVAL                         R16 0
      307 GETTABLEKS                       R16 R16 K36 ["Enums"]
      309 GETTABLEKS                       R16 R16 K37 ["ButtonSize"]
      311 GETTABLEKS                       R16 R16 K38 ["XSmall"]
      313 SETTABLEKS                       R16 R15 K31 ["size"]
      315 GETUPVAL                         R16 0
      316 GETTABLEKS                       R16 R16 K36 ["Enums"]
      318 GETTABLEKS                       R16 R16 K39 ["ButtonVariant"]
      320 GETTABLEKS                       R16 R16 K20 ["Text"]
      322 SETTABLEKS                       R16 R15 K32 ["variant"]
      324 GETUPVAL                         R16 0
      325 GETTABLEKS                       R16 R16 K36 ["Enums"]
      327 GETTABLEKS                       R16 R16 K40 ["FillBehavior"]
      329 GETTABLEKS                       R16 R16 K41 ["Fill"]
      331 SETTABLEKS                       R16 R15 K33 ["fillBehavior"]
      333 MOVE                             R16 R12
      334 CALL                             R16 0 1
      335 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      337 NEWCLOSURE                       R16 P7
      338 CAPTURE                          VAL R4
      339 CAPTURE                          VAL R0
      340 SETTABLEKS                       R16 R15 K15 ["onActivated"]
      342 CALL                             R13 2 1
      343 SETTABLEKS                       R13 R11 K53 ["InternalSettingsButton"]
      345 GETUPVAL                         R13 8
      346 CALL                             R13 0 1
      347 JUMPIFNOT                        R13 ; [+71]
      348 GETTABLEKS                       R13 R0 K54 ["showUsage"]
      350 JUMPIFNOT                        R13 ; [+68]
      351 GETTABLEKS                       R13 R0 K54 ["showUsage"]
      353 GETTABLEKS                       R14 R11 K24 ["AssistantSettingsRow"]
      355 JUMPIFNOT                        R14 ; [+19]
      356 GETUPVAL                         R14 11
      357 GETUPVAL                         R15 15
      358 DUPTABLE                         R16 K55 [{"variant", "LayoutOrder"}]
      359 GETUPVAL                         R17 0
      360 GETTABLEKS                       R17 R17 K36 ["Enums"]
      362 GETTABLEKS                       R17 R17 K56 ["DividerVariant"]
      364 GETTABLEKS                       R17 R17 K57 ["Default"]
      366 SETTABLEKS                       R17 R16 K32 ["variant"]
      368 MOVE                             R17 R12
      369 CALL                             R17 0 1
      370 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      372 CALL                             R14 2 1
      373 SETTABLEKS                       R14 R11 K58 ["SettingsUsageDivider"]
      375 GETUPVAL                         R14 11
      376 GETUPVAL                         R15 12
      377 DUPTABLE                         R16 K60 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall radius-small", ["LayoutOrder"], ["onActivated"]}]
      378 MOVE                             R17 R12
      379 CALL                             R17 0 1
      380 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      382 NEWCLOSURE                       R17 P8
      383 CAPTURE                          VAL R4
      384 CAPTURE                          VAL R13
      385 SETTABLEKS                       R17 R16 K15 ["onActivated"]
      387 DUPTABLE                         R17 K62 [{"TitleRow"}]
      388 GETUPVAL                         R18 11
      389 GETUPVAL                         R19 12
      390 DUPTABLE                         R20 K64 [{["tag"] = "row flex-between align-y-center size-full-0 auto-y", ["LayoutOrder"] = 1}]
      391 DUPTABLE                         R21 K66 [{"Label", "Summary"}]
      392 GETUPVAL                         R22 11
      393 GETUPVAL                         R23 13
      394 DUPTABLE                         R24 K22 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      395 GETTABLEKS                       R25 R9 K67 ["Usage"]
      397 SETTABLEKS                       R25 R24 K20 ["Text"]
      399 CALL                             R22 2 1
      400 SETTABLEKS                       R22 R21 K17 ["Label"]
      402 JUMPIFNOT                        R10 ; [+7]
      403 GETUPVAL                         R22 11
      404 GETUPVAL                         R23 13
      405 DUPTABLE                         R24 K70 [{["tag"] = "auto-xy text-body-small text-align-x-right content-muted", ["Text"], ["LayoutOrder"] = 2}]
      406 SETTABLEKS                       R10 R24 K20 ["Text"]
      408 CALL                             R22 2 1
      409 JUMP                             ; [+1]
      410 LOADNIL                          R22
      411 SETTABLEKS                       R22 R21 K65 ["Summary"]
      413 CALL                             R18 3 1
      414 SETTABLEKS                       R18 R17 K61 ["TitleRow"]
      416 CALL                             R14 3 1
      417 SETTABLEKS                       R14 R11 K71 ["UsageRow"]
      419 GETUPVAL                         R13 2
      420 GETTABLEKS                       R13 R13 K72 ["useRef"]
      422 LOADNIL                          R14
      423 CALL                             R13 1 1
      424 GETUPVAL                         R14 2
      425 GETTABLEKS                       R14 R14 K72 ["useRef"]
      427 LOADNIL                          R15
      428 CALL                             R14 1 1
      429 GETUPVAL                         R15 2
      430 GETTABLEKS                       R15 R15 K73 ["useEffect"]
      432 NEWCLOSURE                       R16 P9
      433 CAPTURE                          VAL R3
      434 CAPTURE                          VAL R13
      435 CAPTURE                          VAL R4
      436 NEWTABLE                         R17 0 1
      438 MOVE                             R18 R3
      439 SETLIST                          R17 R18 1 [1]
      441 CALL                             R15 2 0
      442 GETUPVAL                         R15 2
      443 GETTABLEKS                       R15 R15 K73 ["useEffect"]
      445 NEWCLOSURE                       R16 P10
      446 CAPTURE                          VAL R14
      447 NEWTABLE                         R17 0 1
      449 GETTABLEKS                       R18 R14 K74 ["current"]
      451 SETLIST                          R17 R18 1 [1]
      453 CALL                             R15 2 0
      454 GETUPVAL                         R15 2
      455 GETTABLEKS                       R15 R15 K75 ["useCallback"]
      457 NEWCLOSURE                       R16 P11
      458 CAPTURE                          VAL R3
      459 CAPTURE                          VAL R4
      460 CAPTURE                          VAL R13
      461 CAPTURE                          UPVAL U1
      462 NEWTABLE                         R17 0 1
      464 MOVE                             R18 R3
      465 SETLIST                          R17 R18 1 [1]
      467 CALL                             R15 2 1
      468 GETUPVAL                         R16 11
      469 GETUPVAL                         R17 16
      470 GETTABLEKS                       R17 R17 K76 ["Root"]
      472 DUPTABLE                         R18 K78 [{"isOpen"}]
      473 SETTABLEKS                       R3 R18 K77 ["isOpen"]
      475 DUPTABLE                         R19 K81 [{"SettingsAnchor", "Content"}]
      476 GETUPVAL                         R20 11
      477 GETUPVAL                         R21 16
      478 GETTABLEKS                       R21 R21 K82 ["Anchor"]
      480 DUPTABLE                         R22 K84 [{"LayoutOrder", "ref"}]
      481 GETTABLEKS                       R23 R0 K14 ["LayoutOrder"]
      483 SETTABLEKS                       R23 R22 K14 ["LayoutOrder"]
      485 SETTABLEKS                       R13 R22 K83 ["ref"]
      487 DUPTABLE                         R23 K86 [{"Button"}]
      488 GETUPVAL                         R25 1
      489 GETTABLEKS                       R25 R25 K87 ["FFlagAssistantUseBuilderIcons"]
      491 JUMPIFNOT                        R25 ; [+41]
      492 GETUPVAL                         R24 11
      493 GETUPVAL                         R25 17
      494 DUPTABLE                         R26 K90 [{"icon", "size", "variant", "onActivated", "testId"}]
      495 GETUPVAL                         R27 0
      496 GETTABLEKS                       R27 R27 K36 ["Enums"]
      498 GETTABLEKS                       R27 R27 K91 ["IconName"]
      500 GETTABLEKS                       R27 R27 K92 ["ThreeDotsHorizontal"]
      502 SETTABLEKS                       R27 R26 K88 ["icon"]
      504 GETUPVAL                         R27 0
      505 GETTABLEKS                       R27 R27 K36 ["Enums"]
      507 GETTABLEKS                       R27 R27 K93 ["InputSize"]
      509 GETTABLEKS                       R27 R27 K38 ["XSmall"]
      511 SETTABLEKS                       R27 R26 K31 ["size"]
      513 GETUPVAL                         R27 0
      514 GETTABLEKS                       R27 R27 K36 ["Enums"]
      516 GETTABLEKS                       R27 R27 K39 ["ButtonVariant"]
      518 GETTABLEKS                       R27 R27 K94 ["Utility"]
      520 SETTABLEKS                       R27 R26 K32 ["variant"]
      522 SETTABLEKS                       R15 R26 K15 ["onActivated"]
      524 GETUPVAL                         R27 18
      525 GETTABLEKS                       R27 R27 K95 ["Header"]
      527 GETTABLEKS                       R27 R27 K96 ["SettingsButton"]
      529 SETTABLEKS                       R27 R26 K89 ["testId"]
      531 CALL                             R24 2 1
      532 JUMP                             ; [+13]
      533 GETUPVAL                         R24 11
      534 GETUPVAL                         R25 19
      535 DUPTABLE                         R26 K101 [{["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["testId"], ["onActivated"]}]
      536 GETUPVAL                         R27 18
      537 GETTABLEKS                       R27 R27 K95 ["Header"]
      539 GETTABLEKS                       R27 R27 K96 ["SettingsButton"]
      541 SETTABLEKS                       R27 R26 K89 ["testId"]
      543 SETTABLEKS                       R15 R26 K15 ["onActivated"]
      545 CALL                             R24 2 1
      546 SETTABLEKS                       R24 R23 K85 ["Button"]
      548 CALL                             R20 3 1
      549 SETTABLEKS                       R20 R19 K79 ["SettingsAnchor"]
      551 GETUPVAL                         R20 11
      552 GETUPVAL                         R21 16
      553 GETTABLEKS                       R21 R21 K80 ["Content"]
      555 DUPTABLE                         R22 K107 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      556 DUPTABLE                         R23 K110 [{"position", "offset"}]
      557 GETUPVAL                         R24 0
      558 GETTABLEKS                       R24 R24 K36 ["Enums"]
      560 GETTABLEKS                       R24 R24 K111 ["PopoverSide"]
      562 GETTABLEKS                       R24 R24 K112 ["Bottom"]
      564 SETTABLEKS                       R24 R23 K108 ["position"]
      566 GETTABLEKS                       R24 R1 K113 ["Gap"]
      568 GETTABLEKS                       R24 R24 K38 ["XSmall"]
      570 SETTABLEKS                       R24 R23 K109 ["offset"]
      572 SETTABLEKS                       R23 R22 K102 ["side"]
      574 GETUPVAL                         R24 8
      575 CALL                             R24 0 1
      576 JUMPIFNOT                        R24 ; [+18]
      577 DUPTABLE                         R23 K110 [{"position", "offset"}]
      578 GETUPVAL                         R24 0
      579 GETTABLEKS                       R24 R24 K36 ["Enums"]
      581 GETTABLEKS                       R24 R24 K114 ["PopoverAlign"]
      583 GETTABLEKS                       R24 R24 K115 ["End"]
      585 SETTABLEKS                       R24 R23 K108 ["position"]
      587 GETTABLEKS                       R25 R1 K113 ["Gap"]
      589 GETTABLEKS                       R25 R25 K38 ["XSmall"]
      591 MINUS                            R24 R25
      592 SETTABLEKS                       R24 R23 K109 ["offset"]
      594 JUMP                             ; [+7]
      595 GETUPVAL                         R23 0
      596 GETTABLEKS                       R23 R23 K36 ["Enums"]
      598 GETTABLEKS                       R23 R23 K114 ["PopoverAlign"]
      600 GETTABLEKS                       R23 R23 K116 ["Start"]
      602 SETTABLEKS                       R23 R22 K103 ["align"]
      604 NEWCLOSURE                       R23 P12
      605 CAPTURE                          VAL R4
      606 SETTABLEKS                       R23 R22 K106 ["onPressedOutside"]
      608 DUPTABLE                         R23 K118 [{"SettingsContent"}]
      609 GETUPVAL                         R25 8
      610 CALL                             R25 0 1
      611 JUMPIFNOT                        R25 ; [+22]
      612 GETUPVAL                         R24 11
      613 GETUPVAL                         R25 12
      614 DUPTABLE                         R26 K121 [{["tag"] = "col align-x-left gap-small auto-y padding-y-small stroke-standard stroke-default radius-medium bg-surface-100", ["Size"], ["ref"], ["testId"]}]
      615 GETIMPORT                        R27 K124 [UDim2.fromOffset]
      617 LOADN                            R28 180
      618 LOADN                            R29 0
      619 CALL                             R27 2 1
      620 SETTABLEKS                       R27 R26 K120 ["Size"]
      622 SETTABLEKS                       R14 R26 K83 ["ref"]
      624 GETUPVAL                         R27 18
      625 GETTABLEKS                       R27 R27 K95 ["Header"]
      627 GETTABLEKS                       R27 R27 K117 ["SettingsContent"]
      629 SETTABLEKS                       R27 R26 K89 ["testId"]
      631 MOVE                             R27 R11
      632 CALL                             R24 3 1
      633 JUMP                             ; [+24]
      634 GETUPVAL                         R24 11
      635 GETUPVAL                         R25 12
      636 DUPTABLE                         R26 K127 [{["tag"] = "col align-x-left gap-small auto-xy padding-small radius-medium bg-surface-100", ["ref"], ["testId"], ["sizeConstraint"]}]
      637 SETTABLEKS                       R14 R26 K83 ["ref"]
      639 GETUPVAL                         R27 18
      640 GETTABLEKS                       R27 R27 K95 ["Header"]
      642 GETTABLEKS                       R27 R27 K117 ["SettingsContent"]
      644 SETTABLEKS                       R27 R26 K89 ["testId"]
      646 DUPTABLE                         R27 K129 [{"MinSize"}]
      647 GETIMPORT                        R28 K132 [Vector2.new]
      649 LOADN                            R29 150
      650 LOADN                            R30 0
      651 CALL                             R28 2 1
      652 SETTABLEKS                       R28 R27 K128 ["MinSize"]
      654 SETTABLEKS                       R27 R26 K126 ["sizeConstraint"]
      656 MOVE                             R27 R11
      657 CALL                             R24 3 1
      658 SETTABLEKS                       R24 R23 K117 ["SettingsContent"]
      660 CALL                             R20 3 1
      661 SETTABLEKS                       R20 R19 K80 ["Content"]
      663 CALL                             R16 3 -1
      664 RETURN                           R16 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 DUPTABLE                         R0 K1 [{"VersionMismatchWarning"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["VersionMismatch"]
        3 LOADK                            R4 K0 ["VersionMismatchWarning"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["VersionMismatchWarning"]
        9 RETURN                           R0 1

PROTO_25:
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

PROTO_26:
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
       28 DUPCLOSURE                       R7 K5 [PROTO_24]
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
      132 DUPTABLE                         R22 K11 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
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
      156 DUPTABLE                         R14 K49 [{["side"], ["align"], ["backgroundStyle"], ["hasArrow"] = False}]
      157 DUPTABLE                         R15 K52 [{"position", "offset"}]
      158 GETUPVAL                         R16 0
      159 GETTABLEKS                       R16 R16 K34 ["Enums"]
      161 GETTABLEKS                       R16 R16 K53 ["PopoverSide"]
      163 GETTABLEKS                       R16 R16 K54 ["Bottom"]
      165 SETTABLEKS                       R16 R15 K50 ["position"]
      167 GETTABLEKS                       R16 R1 K55 ["Gap"]
      169 GETTABLEKS                       R16 R16 K56 ["XSmall"]
      171 SETTABLEKS                       R16 R15 K51 ["offset"]
      173 SETTABLEKS                       R15 R14 K44 ["side"]
      175 GETUPVAL                         R15 0
      176 GETTABLEKS                       R15 R15 K34 ["Enums"]
      178 GETTABLEKS                       R15 R15 K57 ["PopoverAlign"]
      180 GETTABLEKS                       R15 R15 K58 ["Center"]
      182 SETTABLEKS                       R15 R14 K45 ["align"]
      184 GETTABLEKS                       R15 R1 K37 ["Color"]
      186 GETTABLEKS                       R15 R15 K59 ["Surface"]
      188 GETTABLEKS                       R15 R15 K60 ["Surface_300"]
      190 SETTABLEKS                       R15 R14 K46 ["backgroundStyle"]
      192 DUPTABLE                         R15 K61 [{"Text"}]
      193 GETUPVAL                         R16 4
      194 GETUPVAL                         R17 5
      195 DUPTABLE                         R18 K63 [{["tag"] = "auto-xy padding-xsmall text-caption-medium text-wrap text-align-x-center content-warning", ["Text"], ["LayoutOrder"]}]
      196 GETTABLEKS                       R19 R6 K64 ["VersionMismatchWarning"]
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 MOVE                             R3 R2
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R3 R2 K2 ["acpSessionId"]
       12 JUMPIF                           R3 ; [+2]
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R1 K3 ["Typography"]
       17 GETTABLEKS                       R4 R4 K4 ["CaptionSmall"]
       19 GETTABLEKS                       R5 R1 K5 ["Color"]
       21 GETTABLEKS                       R5 R5 K6 ["Content"]
       23 GETTABLEKS                       R5 R5 K7 ["Muted"]
       25 GETUPVAL                         R6 2
       26 LOADK                            R7 K8 ["TextBox"]
       27 NEWTABLE                         R8 16 0
       29 SETTABLEKS                       R3 R8 K9 ["Text"]
       31 LOADB                            R9 0
       32 SETTABLEKS                       R9 R8 K10 ["TextEditable"]
       34 LOADB                            R9 0
       35 SETTABLEKS                       R9 R8 K11 ["ClearTextOnFocus"]
       37 GETTABLEKS                       R9 R5 K12 ["Color3"]
       39 SETTABLEKS                       R9 R8 K13 ["TextColor3"]
       41 GETTABLEKS                       R9 R5 K14 ["Transparency"]
       43 SETTABLEKS                       R9 R8 K15 ["TextTransparency"]
       45 GETTABLEKS                       R9 R4 K16 ["Font"]
       47 SETTABLEKS                       R9 R8 K16 ["Font"]
       49 GETTABLEKS                       R9 R4 K17 ["FontSize"]
       51 SETTABLEKS                       R9 R8 K18 ["TextSize"]
       53 GETTABLEKS                       R9 R4 K19 ["LineHeight"]
       55 SETTABLEKS                       R9 R8 K19 ["LineHeight"]
       57 GETIMPORT                        R9 K23 [Enum.TextXAlignment.Left]
       59 SETTABLEKS                       R9 R8 K21 ["TextXAlignment"]
       61 GETIMPORT                        R9 K26 [Enum.TextTruncate.SplitWord]
       63 SETTABLEKS                       R9 R8 K24 ["TextTruncate"]
       65 GETIMPORT                        R9 K29 [UDim2.fromOffset]
       67 LOADN                            R10 0
       68 LOADN                            R11 0
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K30 ["Size"]
       72 GETIMPORT                        R9 K33 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R9 R8 K31 ["AutomaticSize"]
       76 LOADN                            R9 1
       77 SETTABLEKS                       R9 R8 K34 ["BackgroundTransparency"]
       79 LOADN                            R9 0
       80 SETTABLEKS                       R9 R8 K35 ["BorderSizePixel"]
       82 GETTABLEKS                       R9 R0 K36 ["LayoutOrder"]
       84 SETTABLEKS                       R9 R8 K36 ["LayoutOrder"]
       86 GETUPVAL                         R9 3
       87 GETTABLEKS                       R9 R9 K37 ["Tag"]
       89 LOADK                            R11 K38 ["data-testid=%*"]
       90 GETUPVAL                         R13 4
       91 GETTABLEKS                       R13 R13 K39 ["Header"]
       93 GETTABLEKS                       R13 R13 K40 ["AcpSessionIdTag"]
       95 NAMECALL                         R11 R11 K41 ["format"]
       97 CALL                             R11 2 1
       98 MOVE                             R10 R11
       99 SETTABLE                         R10 R8 R9
      100 DUPTABLE                         R9 K43 [{"Flex"}]
      101 GETUPVAL                         R10 2
      102 LOADK                            R11 K44 ["UIFlexItem"]
      103 DUPTABLE                         R12 K46 [{"FlexMode"}]
      104 GETIMPORT                        R13 K49 [Enum.UIFlexMode.Fill]
      106 SETTABLEKS                       R13 R12 K45 ["FlexMode"]
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K42 ["Flex"]
      111 CALL                             R6 3 -1
      112 RETURN                           R6 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["hasInternalPermission"]
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["showInternalSettings"]
       11 RETURN                           R0 1
       12 LOADNIL                          R0
       13 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showSkills"]
        8 GETUPVAL                         R6 2
        9 CALL                             R6 0 1
       10 JUMPIFNOT                        R6 ; [+8]
       11 GETUPVAL                         R6 3
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R2 K2 ["showUsage"]
       16 JUMP                             ; [+4]
       17 LOADNIL                          R5
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R5 R2 K3 ["showApiKeys"]
       21 GETTABLEKS                       R6 R2 K2 ["showUsage"]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R9 0 0
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 6
       33 GETUPVAL                         R9 7
       34 DUPTABLE                         R10 K8 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       35 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       37 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       39 DUPTABLE                         R11 K15 [{"FillArea", "Version", "HarnessSplitTag", "Expand", "Settings", "DialogWidget"}]
       40 GETUPVAL                         R12 6
       41 GETUPVAL                         R13 7
       42 DUPTABLE                         R14 K17 [{["tag"] = "row align-x-left align-y-center fill gap-xsmall auto-y", ["LayoutOrder"]}]
       43 MOVE                             R15 R1
       44 CALL                             R15 0 1
       45 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       47 DUPTABLE                         R15 K20 [{"ToggleThreadsMenuButton", "AcpSessionIdTag"}]
       48 GETUPVAL                         R16 6
       49 GETUPVAL                         R17 8
       50 DUPTABLE                         R18 K21 [{"LayoutOrder"}]
       51 MOVE                             R19 R1
       52 CALL                             R19 0 1
       53 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
       55 CALL                             R16 2 1
       56 SETTABLEKS                       R16 R15 K18 ["ToggleThreadsMenuButton"]
       58 GETUPVAL                         R17 9
       59 GETTABLEKS                       R17 R17 K22 ["FFlagDebugLogAssistantUI"]
       61 JUMPIFNOT                        R17 ; [+9]
       62 GETUPVAL                         R16 6
       63 GETUPVAL                         R17 10
       64 DUPTABLE                         R18 K21 [{"LayoutOrder"}]
       65 MOVE                             R19 R1
       66 CALL                             R19 0 1
       67 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
       69 CALL                             R16 2 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R16
       72 SETTABLEKS                       R16 R15 K19 ["AcpSessionIdTag"]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K9 ["FillArea"]
       77 GETUPVAL                         R13 9
       78 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantVersionMismatchWarning"]
       80 JUMPIFNOT                        R13 ; [+9]
       81 GETUPVAL                         R12 6
       82 GETUPVAL                         R13 11
       83 DUPTABLE                         R14 K21 [{"LayoutOrder"}]
       84 MOVE                             R15 R1
       85 CALL                             R15 0 1
       86 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       88 CALL                             R12 2 1
       89 JUMP                             ; [+14]
       90 GETUPVAL                         R12 6
       91 GETUPVAL                         R13 12
       92 DUPTABLE                         R14 K26 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
       93 GETUPVAL                         R15 13
       94 GETTABLEKS                       R15 R15 K27 ["getVersion"]
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K25 ["Text"]
       99 MOVE                             R15 R1
      100 CALL                             R15 0 1
      101 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K10 ["Version"]
      106 GETUPVAL                         R12 6
      107 GETUPVAL                         R13 12
      108 DUPTABLE                         R14 K29 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"], ["testId"]}]
      109 GETUPVAL                         R16 2
      110 CALL                             R16 0 1
      111 JUMPIFNOT                        R16 ; [+2]
      112 LOADK                            R15 K30 ["R"]
      113 JUMP                             ; [+1]
      114 LOADK                            R15 K31 ["ACP"]
      115 SETTABLEKS                       R15 R14 K25 ["Text"]
      117 MOVE                             R15 R1
      118 CALL                             R15 0 1
      119 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      121 GETUPVAL                         R15 14
      122 GETTABLEKS                       R15 R15 K32 ["Header"]
      124 GETTABLEKS                       R15 R15 K11 ["HarnessSplitTag"]
      126 SETTABLEKS                       R15 R14 K28 ["testId"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K11 ["HarnessSplitTag"]
      131 GETUPVAL                         R12 6
      132 GETUPVAL                         R13 15
      133 DUPTABLE                         R14 K21 [{"LayoutOrder"}]
      134 MOVE                             R15 R1
      135 CALL                             R15 0 1
      136 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K12 ["Expand"]
      141 GETUPVAL                         R12 6
      142 GETUPVAL                         R13 16
      143 DUPTABLE                         R14 K35 [{"LayoutOrder", "showIntegrations", "showSettings", "showInternalSettings", "showSkills", "showUsage"}]
      144 MOVE                             R15 R1
      145 CALL                             R15 0 1
      146 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      148 SETTABLEKS                       R3 R14 K0 ["showIntegrations"]
      150 SETTABLEKS                       R5 R14 K33 ["showSettings"]
      152 SETTABLEKS                       R7 R14 K34 ["showInternalSettings"]
      154 SETTABLEKS                       R4 R14 K1 ["showSkills"]
      156 SETTABLEKS                       R6 R14 K2 ["showUsage"]
      158 CALL                             R12 2 1
      159 SETTABLEKS                       R12 R11 K13 ["Settings"]
      161 GETTABLEKS                       R12 R2 K36 ["root"]
      163 SETTABLEKS                       R12 R11 K14 ["DialogWidget"]
      165 CALL                             R8 3 -1
      166 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["CustomIconButton"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Guest"]
       27 GETTABLEKS                       R4 R4 K11 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["LLMProviderSelectionContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Parent"]
       55 GETTABLEKS                       R8 R8 K16 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K13 ["Parent"]
       62 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Util"]
       69 GETTABLEKS                       R10 R10 K19 ["TestIds"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Components"]
       76 GETTABLEKS                       R11 R11 K20 ["ThreadsWindow"]
       78 GETTABLEKS                       R11 R11 K21 ["ToggleThreadsMenuButton"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K22 ["Resources"]
       85 GETTABLEKS                       R12 R12 K23 ["Localization"]
       87 GETTABLEKS                       R12 R12 K24 ["Translator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K25 ["Types"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Components"]
       99 GETTABLEKS                       R14 R14 K26 ["DailyUsage"]
      101 GETTABLEKS                       R14 R14 K27 ["UsageFormat"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K18 ["Util"]
      108 GETTABLEKS                       R15 R15 K28 ["VersionResolver"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K29 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K30 ["useCloseOnWidgetHidden"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      122 GETTABLEKS                       R17 R17 K31 ["useCurrentThread"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K29 ["Hooks"]
      129 GETTABLEKS                       R18 R18 K32 ["useEditContent"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      136 GETTABLEKS                       R19 R19 K33 ["useGetThread"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K29 ["Hooks"]
      143 GETTABLEKS                       R20 R20 K34 ["useSettingsDialog"]
      145 CALL                             R19 1 1
      146 GETTABLEKS                       R20 R5 K35 ["Button"]
      148 GETTABLEKS                       R21 R5 K36 ["Divider"]
      150 GETTABLEKS                       R22 R5 K37 ["Icon"]
      152 GETTABLEKS                       R23 R5 K38 ["IconButton"]
      154 GETTABLEKS                       R24 R5 K39 ["Image"]
      156 GETTABLEKS                       R25 R5 K40 ["Popover"]
      158 GETTABLEKS                       R26 R5 K41 ["Text"]
      160 GETTABLEKS                       R27 R5 K42 ["View"]
      162 GETTABLEKS                       R28 R8 K43 ["createNextOrder"]
      164 GETTABLEKS                       R29 R7 K44 ["createElement"]
      166 GETIMPORT                        R30 K5 [require]
      168 GETTABLEKS                       R31 R0 K45 ["FlagUtils"]
      170 GETTABLEKS                       R31 R31 K46 ["getIsAssistantUseRemoteService"]
      172 CALL                             R30 1 1
      173 GETTABLEKS                       R30 R30 K47 ["get"]
      175 GETIMPORT                        R31 K5 [require]
      177 GETTABLEKS                       R32 R0 K45 ["FlagUtils"]
      179 GETTABLEKS                       R32 R32 K48 ["getIsCreditMeteringEnabled"]
      181 CALL                             R31 1 1
      182 GETTABLEKS                       R32 R12 K49 ["DEFAULT_STUDIO_MODEL"]
      184 DUPCLOSURE                       R33 K50 [PROTO_0]
      185 CAPTURE                          VAL R4
      186 DUPTABLE                         R34 K55 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"}]
      187 DUPCLOSURE                       R35 K56 [PROTO_4]
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R29
      194 CAPTURE                          VAL R27
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R34
      197 CAPTURE                          VAL R2
      198 DUPCLOSURE                       R36 K57 [PROTO_20]
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R32
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R31
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R28
      210 CAPTURE                          VAL R29
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R2
      219 DUPCLOSURE                       R37 K58 [PROTO_26]
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R11
      224 CAPTURE                          VAL R29
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R22
      230 CAPTURE                          VAL R9
      231 DUPCLOSURE                       R38 K59 [PROTO_27]
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R29
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R9
      237 DUPCLOSURE                       R39 K60 [PROTO_29]
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R31
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R38
      249 CAPTURE                          VAL R37
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R35
      254 CAPTURE                          VAL R36
      255 RETURN                           R39 1
