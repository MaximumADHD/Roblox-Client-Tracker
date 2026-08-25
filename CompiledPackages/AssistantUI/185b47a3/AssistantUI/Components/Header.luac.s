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
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K10 ["FFlagAssistantPrivilegedCodeExecution"]
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K11 ["InternalFeatures"]
       27 LOADK                            R4 K12 ["Title"]
       28 NAMECALL                         R1 R1 K8 ["getText"]
       30 CALL                             R1 3 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K2 ["InternalSettings"]
       35 GETUPVAL                         R1 1
       36 LOADK                            R3 K13 ["Skills"]
       37 LOADK                            R4 K3 ["ManageSkills"]
       38 NAMECALL                         R1 R1 K8 ["getText"]
       40 CALL                             R1 3 1
       41 SETTABLEKS                       R1 R0 K3 ["ManageSkills"]
       43 GETUPVAL                         R1 1
       44 LOADK                            R3 K9 ["SettingsDialog"]
       45 LOADK                            R4 K14 ["OverflowMenuTitle"]
       46 NAMECALL                         R1 R1 K8 ["getText"]
       48 CALL                             R1 3 1
       49 SETTABLEKS                       R1 R0 K4 ["AssistantSettings"]
       51 GETUPVAL                         R1 1
       52 LOADK                            R3 K15 ["CreditMetering"]
       53 LOADK                            R4 K16 ["UsageTitle"]
       54 NAMECALL                         R1 R1 K8 ["getText"]
       56 CALL                             R1 3 1
       57 SETTABLEKS                       R1 R0 K5 ["Usage"]
       59 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 LOADK                            R2 K1 ["CreditMetering"]
       10 LOADK                            R3 K2 ["FreeUsagePercent"]
       11 DUPTABLE                         R4 K4 [{"percent"}]
       12 GETIMPORT                        R5 K7 [string.format]
       14 LOADK                            R6 K8 ["%d"]
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K9 ["getPercentUsed"]
       18 GETUPVAL                         R8 1
       19 CALL                             R7 1 -1
       20 CALL                             R5 -1 1
       21 SETTABLEKS                       R5 R4 K3 ["percent"]
       23 NAMECALL                         R0 R0 K10 ["getText"]
       25 CALL                             R0 4 -1
       26 RETURN                           R0 -1

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
       60 CAPTURE                          UPVAL U1
       61 NEWTABLE                         R11 0 2
       63 GETUPVAL                         R12 6
       64 GETTABLEKS                       R12 R12 K9 ["locale"]
       66 MOVE                             R13 R2
       67 SETLIST                          R11 R12 2 [1]
       69 CALL                             R9 2 1
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U8
       78 NEWTABLE                         R12 0 2
       80 MOVE                             R13 R8
       81 GETUPVAL                         R14 6
       82 GETTABLEKS                       R14 R14 K9 ["locale"]
       84 SETLIST                          R12 R13 2 [1]
       86 CALL                             R10 2 1
       87 NEWTABLE                         R11 0 0
       89 GETUPVAL                         R12 9
       90 CALL                             R12 0 1
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K11 ["FFlagAssistantCreditMetering"]
       94 JUMPIFNOT                        R13 ; [+32]
       95 GETTABLEKS                       R13 R0 K12 ["showSettings"]
       97 JUMPIFNOT                        R13 ; [+249]
       98 GETTABLEKS                       R13 R0 K12 ["showSettings"]
      100 GETUPVAL                         R14 10
      101 GETUPVAL                         R15 11
      102 DUPTABLE                         R16 K17 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-small padding-y-xsmall radius-small", ["LayoutOrder"], ["onActivated"]}]
      103 MOVE                             R17 R12
      104 CALL                             R17 0 1
      105 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      107 NEWCLOSURE                       R17 P3
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R13
      110 SETTABLEKS                       R17 R16 K16 ["onActivated"]
      112 DUPTABLE                         R17 K19 [{"Label"}]
      113 GETUPVAL                         R18 10
      114 GETUPVAL                         R19 12
      115 DUPTABLE                         R20 K23 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      116 GETTABLEKS                       R21 R9 K24 ["AssistantSettings"]
      118 SETTABLEKS                       R21 R20 K21 ["Text"]
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K18 ["Label"]
      123 CALL                             R14 3 1
      124 SETTABLEKS                       R14 R11 K25 ["AssistantSettingsRow"]
      126 JUMP                             ; [+220]
      127 GETTABLEKS                       R13 R0 K12 ["showSettings"]
      129 JUMPIFNOT                        R13 ; [+69]
      130 GETUPVAL                         R13 10
      131 GETUPVAL                         R14 11
      132 DUPTABLE                         R15 K27 [{["tag"] = "col gap-xxsmall auto-xy", ["LayoutOrder"]}]
      133 MOVE                             R16 R12
      134 CALL                             R16 0 1
      135 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      137 DUPTABLE                         R16 K30 [{"EditApiKeysButton", "CurrentModelText"}]
      138 GETUPVAL                         R17 10
      139 GETUPVAL                         R18 13
      140 DUPTABLE                         R19 K35 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      141 GETTABLEKS                       R20 R9 K36 ["EditApiKeys"]
      143 SETTABLEKS                       R20 R19 K31 ["text"]
      145 GETUPVAL                         R20 0
      146 GETTABLEKS                       R20 R20 K37 ["Enums"]
      148 GETTABLEKS                       R20 R20 K38 ["ButtonSize"]
      150 GETTABLEKS                       R20 R20 K39 ["XSmall"]
      152 SETTABLEKS                       R20 R19 K32 ["size"]
      154 GETUPVAL                         R20 0
      155 GETTABLEKS                       R20 R20 K37 ["Enums"]
      157 GETTABLEKS                       R20 R20 K40 ["ButtonVariant"]
      159 GETTABLEKS                       R20 R20 K21 ["Text"]
      161 SETTABLEKS                       R20 R19 K33 ["variant"]
      163 GETUPVAL                         R20 0
      164 GETTABLEKS                       R20 R20 K37 ["Enums"]
      166 GETTABLEKS                       R20 R20 K41 ["FillBehavior"]
      168 GETTABLEKS                       R20 R20 K42 ["Fill"]
      170 SETTABLEKS                       R20 R19 K34 ["fillBehavior"]
      172 MOVE                             R20 R12
      173 CALL                             R20 0 1
      174 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      176 NEWCLOSURE                       R20 P4
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R0
      179 SETTABLEKS                       R20 R19 K16 ["onActivated"]
      181 CALL                             R17 2 1
      182 SETTABLEKS                       R17 R16 K28 ["EditApiKeysButton"]
      184 GETUPVAL                         R17 10
      185 GETUPVAL                         R18 12
      186 DUPTABLE                         R19 K44 [{["tag"] = "auto-xy padding-left-small text-caption-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      187 SETTABLEKS                       R6 R19 K21 ["Text"]
      189 MOVE                             R20 R12
      190 CALL                             R20 0 1
      191 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K29 ["CurrentModelText"]
      196 CALL                             R13 3 1
      197 SETTABLEKS                       R13 R11 K45 ["EditApiKeysGroup"]
      199 JUMPIFNOT                        R2 ; [+49]
      200 GETTABLEKS                       R13 R0 K46 ["showIntegrations"]
      202 JUMPIFNOT                        R13 ; [+46]
      203 GETUPVAL                         R13 10
      204 GETUPVAL                         R14 13
      205 DUPTABLE                         R15 K35 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      206 GETTABLEKS                       R16 R9 K47 ["ManageIntegrations"]
      208 SETTABLEKS                       R16 R15 K31 ["text"]
      210 GETUPVAL                         R16 0
      211 GETTABLEKS                       R16 R16 K37 ["Enums"]
      213 GETTABLEKS                       R16 R16 K38 ["ButtonSize"]
      215 GETTABLEKS                       R16 R16 K39 ["XSmall"]
      217 SETTABLEKS                       R16 R15 K32 ["size"]
      219 GETUPVAL                         R16 0
      220 GETTABLEKS                       R16 R16 K37 ["Enums"]
      222 GETTABLEKS                       R16 R16 K40 ["ButtonVariant"]
      224 GETTABLEKS                       R16 R16 K21 ["Text"]
      226 SETTABLEKS                       R16 R15 K33 ["variant"]
      228 GETUPVAL                         R16 0
      229 GETTABLEKS                       R16 R16 K37 ["Enums"]
      231 GETTABLEKS                       R16 R16 K41 ["FillBehavior"]
      233 GETTABLEKS                       R16 R16 K42 ["Fill"]
      235 SETTABLEKS                       R16 R15 K34 ["fillBehavior"]
      237 MOVE                             R16 R12
      238 CALL                             R16 0 1
      239 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      241 NEWCLOSURE                       R16 P5
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R16 R15 K16 ["onActivated"]
      246 CALL                             R13 2 1
      247 SETTABLEKS                       R13 R11 K48 ["ManageIntegrationsButton"]
      249 GETTABLEKS                       R13 R0 K49 ["showSkills"]
      251 JUMPIFNOT                        R13 ; [+46]
      252 GETUPVAL                         R13 10
      253 GETUPVAL                         R14 13
      254 DUPTABLE                         R15 K35 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      255 GETTABLEKS                       R16 R9 K50 ["ManageSkills"]
      257 SETTABLEKS                       R16 R15 K31 ["text"]
      259 GETUPVAL                         R16 0
      260 GETTABLEKS                       R16 R16 K37 ["Enums"]
      262 GETTABLEKS                       R16 R16 K38 ["ButtonSize"]
      264 GETTABLEKS                       R16 R16 K39 ["XSmall"]
      266 SETTABLEKS                       R16 R15 K32 ["size"]
      268 GETUPVAL                         R16 0
      269 GETTABLEKS                       R16 R16 K37 ["Enums"]
      271 GETTABLEKS                       R16 R16 K40 ["ButtonVariant"]
      273 GETTABLEKS                       R16 R16 K21 ["Text"]
      275 SETTABLEKS                       R16 R15 K33 ["variant"]
      277 GETUPVAL                         R16 0
      278 GETTABLEKS                       R16 R16 K37 ["Enums"]
      280 GETTABLEKS                       R16 R16 K41 ["FillBehavior"]
      282 GETTABLEKS                       R16 R16 K42 ["Fill"]
      284 SETTABLEKS                       R16 R15 K34 ["fillBehavior"]
      286 MOVE                             R16 R12
      287 CALL                             R16 0 1
      288 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      290 NEWCLOSURE                       R16 P6
      291 CAPTURE                          VAL R4
      292 CAPTURE                          VAL R0
      293 SETTABLEKS                       R16 R15 K16 ["onActivated"]
      295 CALL                             R13 2 1
      296 SETTABLEKS                       R13 R11 K51 ["ManageSkillsButton"]
      298 GETTABLEKS                       R13 R0 K52 ["showInternalSettings"]
      300 JUMPIFNOT                        R13 ; [+46]
      301 GETUPVAL                         R13 10
      302 GETUPVAL                         R14 13
      303 DUPTABLE                         R15 K35 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      304 GETTABLEKS                       R16 R9 K53 ["InternalSettings"]
      306 SETTABLEKS                       R16 R15 K31 ["text"]
      308 GETUPVAL                         R16 0
      309 GETTABLEKS                       R16 R16 K37 ["Enums"]
      311 GETTABLEKS                       R16 R16 K38 ["ButtonSize"]
      313 GETTABLEKS                       R16 R16 K39 ["XSmall"]
      315 SETTABLEKS                       R16 R15 K32 ["size"]
      317 GETUPVAL                         R16 0
      318 GETTABLEKS                       R16 R16 K37 ["Enums"]
      320 GETTABLEKS                       R16 R16 K40 ["ButtonVariant"]
      322 GETTABLEKS                       R16 R16 K21 ["Text"]
      324 SETTABLEKS                       R16 R15 K33 ["variant"]
      326 GETUPVAL                         R16 0
      327 GETTABLEKS                       R16 R16 K37 ["Enums"]
      329 GETTABLEKS                       R16 R16 K41 ["FillBehavior"]
      331 GETTABLEKS                       R16 R16 K42 ["Fill"]
      333 SETTABLEKS                       R16 R15 K34 ["fillBehavior"]
      335 MOVE                             R16 R12
      336 CALL                             R16 0 1
      337 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      339 NEWCLOSURE                       R16 P7
      340 CAPTURE                          VAL R4
      341 CAPTURE                          VAL R0
      342 SETTABLEKS                       R16 R15 K16 ["onActivated"]
      344 CALL                             R13 2 1
      345 SETTABLEKS                       R13 R11 K54 ["InternalSettingsButton"]
      347 GETUPVAL                         R13 1
      348 GETTABLEKS                       R13 R13 K11 ["FFlagAssistantCreditMetering"]
      350 JUMPIFNOT                        R13 ; [+71]
      351 GETTABLEKS                       R13 R0 K55 ["showUsage"]
      353 JUMPIFNOT                        R13 ; [+68]
      354 GETTABLEKS                       R13 R0 K55 ["showUsage"]
      356 GETTABLEKS                       R14 R11 K25 ["AssistantSettingsRow"]
      358 JUMPIFNOT                        R14 ; [+19]
      359 GETUPVAL                         R14 10
      360 GETUPVAL                         R15 14
      361 DUPTABLE                         R16 K56 [{"variant", "LayoutOrder"}]
      362 GETUPVAL                         R17 0
      363 GETTABLEKS                       R17 R17 K37 ["Enums"]
      365 GETTABLEKS                       R17 R17 K57 ["DividerVariant"]
      367 GETTABLEKS                       R17 R17 K58 ["Default"]
      369 SETTABLEKS                       R17 R16 K33 ["variant"]
      371 MOVE                             R17 R12
      372 CALL                             R17 0 1
      373 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      375 CALL                             R14 2 1
      376 SETTABLEKS                       R14 R11 K59 ["SettingsUsageDivider"]
      378 GETUPVAL                         R14 10
      379 GETUPVAL                         R15 11
      380 DUPTABLE                         R16 K61 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small padding-y-xsmall radius-small", ["LayoutOrder"], ["onActivated"]}]
      381 MOVE                             R17 R12
      382 CALL                             R17 0 1
      383 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      385 NEWCLOSURE                       R17 P8
      386 CAPTURE                          VAL R4
      387 CAPTURE                          VAL R13
      388 SETTABLEKS                       R17 R16 K16 ["onActivated"]
      390 DUPTABLE                         R17 K63 [{"TitleRow"}]
      391 GETUPVAL                         R18 10
      392 GETUPVAL                         R19 11
      393 DUPTABLE                         R20 K65 [{["tag"] = "row flex-between align-y-center size-full-0 auto-y", ["LayoutOrder"] = 1}]
      394 DUPTABLE                         R21 K67 [{"Label", "Summary"}]
      395 GETUPVAL                         R22 10
      396 GETUPVAL                         R23 12
      397 DUPTABLE                         R24 K23 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      398 GETTABLEKS                       R25 R9 K68 ["Usage"]
      400 SETTABLEKS                       R25 R24 K21 ["Text"]
      402 CALL                             R22 2 1
      403 SETTABLEKS                       R22 R21 K18 ["Label"]
      405 JUMPIFNOT                        R10 ; [+7]
      406 GETUPVAL                         R22 10
      407 GETUPVAL                         R23 12
      408 DUPTABLE                         R24 K71 [{["tag"] = "auto-xy text-body-small text-align-x-right content-muted", ["Text"], ["LayoutOrder"] = 2}]
      409 SETTABLEKS                       R10 R24 K21 ["Text"]
      411 CALL                             R22 2 1
      412 JUMP                             ; [+1]
      413 LOADNIL                          R22
      414 SETTABLEKS                       R22 R21 K66 ["Summary"]
      416 CALL                             R18 3 1
      417 SETTABLEKS                       R18 R17 K62 ["TitleRow"]
      419 CALL                             R14 3 1
      420 SETTABLEKS                       R14 R11 K72 ["UsageRow"]
      422 GETUPVAL                         R13 2
      423 GETTABLEKS                       R13 R13 K73 ["useRef"]
      425 LOADNIL                          R14
      426 CALL                             R13 1 1
      427 GETUPVAL                         R14 2
      428 GETTABLEKS                       R14 R14 K73 ["useRef"]
      430 LOADNIL                          R15
      431 CALL                             R14 1 1
      432 GETUPVAL                         R15 2
      433 GETTABLEKS                       R15 R15 K74 ["useEffect"]
      435 NEWCLOSURE                       R16 P9
      436 CAPTURE                          VAL R3
      437 CAPTURE                          VAL R13
      438 CAPTURE                          VAL R4
      439 NEWTABLE                         R17 0 1
      441 MOVE                             R18 R3
      442 SETLIST                          R17 R18 1 [1]
      444 CALL                             R15 2 0
      445 GETUPVAL                         R15 2
      446 GETTABLEKS                       R15 R15 K74 ["useEffect"]
      448 NEWCLOSURE                       R16 P10
      449 CAPTURE                          VAL R14
      450 NEWTABLE                         R17 0 1
      452 GETTABLEKS                       R18 R14 K75 ["current"]
      454 SETLIST                          R17 R18 1 [1]
      456 CALL                             R15 2 0
      457 GETUPVAL                         R15 2
      458 GETTABLEKS                       R15 R15 K76 ["useCallback"]
      460 NEWCLOSURE                       R16 P11
      461 CAPTURE                          VAL R3
      462 CAPTURE                          VAL R4
      463 CAPTURE                          VAL R13
      464 CAPTURE                          UPVAL U1
      465 NEWTABLE                         R17 0 1
      467 MOVE                             R18 R3
      468 SETLIST                          R17 R18 1 [1]
      470 CALL                             R15 2 1
      471 GETUPVAL                         R16 10
      472 GETUPVAL                         R17 15
      473 GETTABLEKS                       R17 R17 K77 ["Root"]
      475 DUPTABLE                         R18 K79 [{"isOpen"}]
      476 SETTABLEKS                       R3 R18 K78 ["isOpen"]
      478 DUPTABLE                         R19 K82 [{"SettingsAnchor", "Content"}]
      479 GETUPVAL                         R20 10
      480 GETUPVAL                         R21 15
      481 GETTABLEKS                       R21 R21 K83 ["Anchor"]
      483 DUPTABLE                         R22 K85 [{"LayoutOrder", "ref"}]
      484 GETTABLEKS                       R23 R0 K15 ["LayoutOrder"]
      486 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      488 SETTABLEKS                       R13 R22 K84 ["ref"]
      490 DUPTABLE                         R23 K87 [{"Button"}]
      491 GETUPVAL                         R25 1
      492 GETTABLEKS                       R25 R25 K88 ["FFlagAssistantUseBuilderIcons"]
      494 JUMPIFNOT                        R25 ; [+41]
      495 GETUPVAL                         R24 10
      496 GETUPVAL                         R25 16
      497 DUPTABLE                         R26 K91 [{"icon", "size", "variant", "onActivated", "testId"}]
      498 GETUPVAL                         R27 0
      499 GETTABLEKS                       R27 R27 K37 ["Enums"]
      501 GETTABLEKS                       R27 R27 K92 ["IconName"]
      503 GETTABLEKS                       R27 R27 K93 ["ThreeDotsHorizontal"]
      505 SETTABLEKS                       R27 R26 K89 ["icon"]
      507 GETUPVAL                         R27 0
      508 GETTABLEKS                       R27 R27 K37 ["Enums"]
      510 GETTABLEKS                       R27 R27 K94 ["InputSize"]
      512 GETTABLEKS                       R27 R27 K39 ["XSmall"]
      514 SETTABLEKS                       R27 R26 K32 ["size"]
      516 GETUPVAL                         R27 0
      517 GETTABLEKS                       R27 R27 K37 ["Enums"]
      519 GETTABLEKS                       R27 R27 K40 ["ButtonVariant"]
      521 GETTABLEKS                       R27 R27 K95 ["Utility"]
      523 SETTABLEKS                       R27 R26 K33 ["variant"]
      525 SETTABLEKS                       R15 R26 K16 ["onActivated"]
      527 GETUPVAL                         R27 17
      528 GETTABLEKS                       R27 R27 K96 ["Header"]
      530 GETTABLEKS                       R27 R27 K97 ["SettingsButton"]
      532 SETTABLEKS                       R27 R26 K90 ["testId"]
      534 CALL                             R24 2 1
      535 JUMP                             ; [+13]
      536 GETUPVAL                         R24 10
      537 GETUPVAL                         R25 18
      538 DUPTABLE                         R26 K102 [{["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["testId"], ["onActivated"]}]
      539 GETUPVAL                         R27 17
      540 GETTABLEKS                       R27 R27 K96 ["Header"]
      542 GETTABLEKS                       R27 R27 K97 ["SettingsButton"]
      544 SETTABLEKS                       R27 R26 K90 ["testId"]
      546 SETTABLEKS                       R15 R26 K16 ["onActivated"]
      548 CALL                             R24 2 1
      549 SETTABLEKS                       R24 R23 K86 ["Button"]
      551 CALL                             R20 3 1
      552 SETTABLEKS                       R20 R19 K80 ["SettingsAnchor"]
      554 GETUPVAL                         R20 10
      555 GETUPVAL                         R21 15
      556 GETTABLEKS                       R21 R21 K81 ["Content"]
      558 DUPTABLE                         R22 K108 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      559 DUPTABLE                         R23 K111 [{"position", "offset"}]
      560 GETUPVAL                         R24 0
      561 GETTABLEKS                       R24 R24 K37 ["Enums"]
      563 GETTABLEKS                       R24 R24 K112 ["PopoverSide"]
      565 GETTABLEKS                       R24 R24 K113 ["Bottom"]
      567 SETTABLEKS                       R24 R23 K109 ["position"]
      569 GETTABLEKS                       R24 R1 K114 ["Gap"]
      571 GETTABLEKS                       R24 R24 K39 ["XSmall"]
      573 SETTABLEKS                       R24 R23 K110 ["offset"]
      575 SETTABLEKS                       R23 R22 K103 ["side"]
      577 GETUPVAL                         R24 1
      578 GETTABLEKS                       R24 R24 K11 ["FFlagAssistantCreditMetering"]
      580 JUMPIFNOT                        R24 ; [+18]
      581 DUPTABLE                         R23 K111 [{"position", "offset"}]
      582 GETUPVAL                         R24 0
      583 GETTABLEKS                       R24 R24 K37 ["Enums"]
      585 GETTABLEKS                       R24 R24 K115 ["PopoverAlign"]
      587 GETTABLEKS                       R24 R24 K116 ["End"]
      589 SETTABLEKS                       R24 R23 K109 ["position"]
      591 GETTABLEKS                       R25 R1 K114 ["Gap"]
      593 GETTABLEKS                       R25 R25 K39 ["XSmall"]
      595 MINUS                            R24 R25
      596 SETTABLEKS                       R24 R23 K110 ["offset"]
      598 JUMP                             ; [+7]
      599 GETUPVAL                         R23 0
      600 GETTABLEKS                       R23 R23 K37 ["Enums"]
      602 GETTABLEKS                       R23 R23 K115 ["PopoverAlign"]
      604 GETTABLEKS                       R23 R23 K117 ["Start"]
      606 SETTABLEKS                       R23 R22 K104 ["align"]
      608 NEWCLOSURE                       R23 P12
      609 CAPTURE                          VAL R4
      610 SETTABLEKS                       R23 R22 K107 ["onPressedOutside"]
      612 DUPTABLE                         R23 K119 [{"SettingsContent"}]
      613 GETUPVAL                         R25 1
      614 GETTABLEKS                       R25 R25 K11 ["FFlagAssistantCreditMetering"]
      616 JUMPIFNOT                        R25 ; [+22]
      617 GETUPVAL                         R24 10
      618 GETUPVAL                         R25 11
      619 DUPTABLE                         R26 K122 [{["tag"] = "col align-x-left gap-small auto-y padding-y-small stroke-standard stroke-default radius-medium bg-surface-100", ["Size"], ["ref"], ["testId"]}]
      620 GETIMPORT                        R27 K125 [UDim2.fromOffset]
      622 LOADN                            R28 180
      623 LOADN                            R29 0
      624 CALL                             R27 2 1
      625 SETTABLEKS                       R27 R26 K121 ["Size"]
      627 SETTABLEKS                       R14 R26 K84 ["ref"]
      629 GETUPVAL                         R27 17
      630 GETTABLEKS                       R27 R27 K96 ["Header"]
      632 GETTABLEKS                       R27 R27 K118 ["SettingsContent"]
      634 SETTABLEKS                       R27 R26 K90 ["testId"]
      636 MOVE                             R27 R11
      637 CALL                             R24 3 1
      638 JUMP                             ; [+24]
      639 GETUPVAL                         R24 10
      640 GETUPVAL                         R25 11
      641 DUPTABLE                         R26 K128 [{["tag"] = "col align-x-left gap-small auto-xy padding-small radius-medium bg-surface-100", ["ref"], ["testId"], ["sizeConstraint"]}]
      642 SETTABLEKS                       R14 R26 K84 ["ref"]
      644 GETUPVAL                         R27 17
      645 GETTABLEKS                       R27 R27 K96 ["Header"]
      647 GETTABLEKS                       R27 R27 K118 ["SettingsContent"]
      649 SETTABLEKS                       R27 R26 K90 ["testId"]
      651 DUPTABLE                         R27 K130 [{"MinSize"}]
      652 GETIMPORT                        R28 K133 [Vector2.new]
      654 LOADN                            R29 150
      655 LOADN                            R30 0
      656 CALL                             R28 2 1
      657 SETTABLEKS                       R28 R27 K129 ["MinSize"]
      659 SETTABLEKS                       R27 R26 K127 ["sizeConstraint"]
      661 MOVE                             R27 R11
      662 CALL                             R24 3 1
      663 SETTABLEKS                       R24 R23 K118 ["SettingsContent"]
      665 CALL                             R20 3 1
      666 SETTABLEKS                       R20 R19 K81 ["Content"]
      668 CALL                             R16 3 -1
      669 RETURN                           R16 -1

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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantPrivilegedCodeExecution"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["get"]
        9 CALL                             R0 0 1
       10 GETTABLEKS                       R0 R0 K2 ["hasInternalPermission"]
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K3 ["showInternalSettings"]
       17 RETURN                           R0 1
       18 LOADNIL                          R0
       19 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showSkills"]
        8 GETTABLEKS                       R5 R2 K2 ["showApiKeys"]
       10 GETTABLEKS                       R6 R2 K3 ["showUsage"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R9 0 0
       21 CALL                             R7 2 1
       22 GETUPVAL                         R8 5
       23 GETUPVAL                         R9 6
       24 DUPTABLE                         R10 K8 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       25 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       27 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       29 DUPTABLE                         R11 K15 [{"FillArea", "Version", "HarnessSplitTag", "Expand", "Settings", "DialogWidget"}]
       30 GETUPVAL                         R12 5
       31 GETUPVAL                         R13 6
       32 DUPTABLE                         R14 K17 [{["tag"] = "row align-x-left align-y-center fill gap-xsmall auto-y", ["LayoutOrder"]}]
       33 MOVE                             R15 R1
       34 CALL                             R15 0 1
       35 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       37 DUPTABLE                         R15 K20 [{"ToggleThreadsMenuButton", "AcpSessionIdTag"}]
       38 GETUPVAL                         R16 5
       39 GETUPVAL                         R17 7
       40 DUPTABLE                         R18 K21 [{"LayoutOrder"}]
       41 MOVE                             R19 R1
       42 CALL                             R19 0 1
       43 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
       45 CALL                             R16 2 1
       46 SETTABLEKS                       R16 R15 K18 ["ToggleThreadsMenuButton"]
       48 GETUPVAL                         R17 3
       49 GETTABLEKS                       R17 R17 K22 ["FFlagDebugLogAssistantUI"]
       51 JUMPIFNOT                        R17 ; [+9]
       52 GETUPVAL                         R16 5
       53 GETUPVAL                         R17 8
       54 DUPTABLE                         R18 K21 [{"LayoutOrder"}]
       55 MOVE                             R19 R1
       56 CALL                             R19 0 1
       57 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
       59 CALL                             R16 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R16
       62 SETTABLEKS                       R16 R15 K19 ["AcpSessionIdTag"]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K9 ["FillArea"]
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantVersionMismatchWarning"]
       70 JUMPIFNOT                        R13 ; [+9]
       71 GETUPVAL                         R12 5
       72 GETUPVAL                         R13 9
       73 DUPTABLE                         R14 K21 [{"LayoutOrder"}]
       74 MOVE                             R15 R1
       75 CALL                             R15 0 1
       76 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       78 CALL                             R12 2 1
       79 JUMP                             ; [+14]
       80 GETUPVAL                         R12 5
       81 GETUPVAL                         R13 10
       82 DUPTABLE                         R14 K26 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
       83 GETUPVAL                         R15 11
       84 GETTABLEKS                       R15 R15 K27 ["getVersion"]
       86 CALL                             R15 0 1
       87 SETTABLEKS                       R15 R14 K25 ["Text"]
       89 MOVE                             R15 R1
       90 CALL                             R15 0 1
       91 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K10 ["Version"]
       96 GETUPVAL                         R13 12
       97 CALL                             R13 0 1
       98 JUMPIFNOT                        R13 ; [+16]
       99 GETUPVAL                         R12 5
      100 GETUPVAL                         R13 10
      101 DUPTABLE                         R14 K30 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"] = "ACP", ["LayoutOrder"], ["testId"]}]
      102 MOVE                             R15 R1
      103 CALL                             R15 0 1
      104 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      106 GETUPVAL                         R15 13
      107 GETTABLEKS                       R15 R15 K31 ["Header"]
      109 GETTABLEKS                       R15 R15 K11 ["HarnessSplitTag"]
      111 SETTABLEKS                       R15 R14 K29 ["testId"]
      113 CALL                             R12 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R12
      116 SETTABLEKS                       R12 R11 K11 ["HarnessSplitTag"]
      118 GETUPVAL                         R12 5
      119 GETUPVAL                         R13 14
      120 DUPTABLE                         R14 K21 [{"LayoutOrder"}]
      121 MOVE                             R15 R1
      122 CALL                             R15 0 1
      123 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K12 ["Expand"]
      128 GETUPVAL                         R12 5
      129 GETUPVAL                         R13 15
      130 DUPTABLE                         R14 K34 [{"LayoutOrder", "showIntegrations", "showSettings", "showInternalSettings", "showSkills", "showUsage"}]
      131 MOVE                             R15 R1
      132 CALL                             R15 0 1
      133 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      135 SETTABLEKS                       R3 R14 K0 ["showIntegrations"]
      137 SETTABLEKS                       R5 R14 K32 ["showSettings"]
      139 SETTABLEKS                       R7 R14 K33 ["showInternalSettings"]
      141 SETTABLEKS                       R4 R14 K1 ["showSkills"]
      143 SETTABLEKS                       R6 R14 K3 ["showUsage"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K13 ["Settings"]
      148 GETTABLEKS                       R12 R2 K35 ["root"]
      150 SETTABLEKS                       R12 R11 K14 ["DialogWidget"]
      152 CALL                             R8 3 -1
      153 RETURN                           R8 -1

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
       32 GETTABLEKS                       R5 R0 K12 ["FlagUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Flags"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Parent"]
       44 GETTABLEKS                       R7 R7 K15 ["Foundation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Components"]
       51 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K16 ["LLMProviderSelectionContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["React"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Parent"]
       67 GETTABLEKS                       R10 R10 K18 ["ReactUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K19 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["TestIds"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K21 ["ThreadsWindow"]
       83 GETTABLEKS                       R12 R12 K22 ["ToggleThreadsMenuButton"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Resources"]
       90 GETTABLEKS                       R13 R13 K24 ["Localization"]
       92 GETTABLEKS                       R13 R13 K25 ["Translator"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K26 ["Types"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Components"]
      104 GETTABLEKS                       R15 R15 K27 ["DailyUsage"]
      106 GETTABLEKS                       R15 R15 K28 ["UsageFormat"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K19 ["Util"]
      113 GETTABLEKS                       R16 R16 K29 ["VersionResolver"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K30 ["Hooks"]
      120 GETTABLEKS                       R17 R17 K31 ["useCloseOnWidgetHidden"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      127 GETTABLEKS                       R18 R18 K32 ["useCurrentThread"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K30 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K33 ["useEditContent"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K30 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K34 ["useGetThread"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K30 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K35 ["useSettingsDialog"]
      150 CALL                             R20 1 1
      151 GETTABLEKS                       R21 R6 K36 ["Button"]
      153 GETTABLEKS                       R22 R6 K37 ["Divider"]
      155 GETTABLEKS                       R23 R6 K38 ["Icon"]
      157 GETTABLEKS                       R24 R6 K39 ["IconButton"]
      159 GETTABLEKS                       R25 R6 K40 ["Image"]
      161 GETTABLEKS                       R26 R6 K41 ["Popover"]
      163 GETTABLEKS                       R27 R6 K42 ["Text"]
      165 GETTABLEKS                       R28 R6 K43 ["View"]
      167 GETTABLEKS                       R29 R9 K44 ["createNextOrder"]
      169 GETTABLEKS                       R30 R8 K45 ["createElement"]
      171 GETTABLEKS                       R31 R4 K46 ["getIsAssistantHarnessSplit"]
      173 GETTABLEKS                       R32 R13 K47 ["DEFAULT_STUDIO_MODEL"]
      175 DUPCLOSURE                       R33 K48 [PROTO_0]
      176 CAPTURE                          VAL R5
      177 DUPTABLE                         R34 K53 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"}]
      178 DUPCLOSURE                       R35 K54 [PROTO_4]
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R30
      185 CAPTURE                          VAL R28
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R34
      188 CAPTURE                          VAL R2
      189 DUPCLOSURE                       R36 K55 [PROTO_20]
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R32
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R28
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R2
      209 DUPCLOSURE                       R37 K56 [PROTO_26]
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R30
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R10
      221 DUPCLOSURE                       R38 K57 [PROTO_27]
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R10
      227 DUPCLOSURE                       R39 K58 [PROTO_29]
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R28
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R38
      237 CAPTURE                          VAL R37
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R35
      243 CAPTURE                          VAL R36
      244 RETURN                           R39 1
