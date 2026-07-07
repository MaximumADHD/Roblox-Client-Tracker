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
       22 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantPrivilegedCodeExecution"]
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K9 ["InternalFeatures"]
       27 LOADK                            R4 K10 ["Title"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K2 ["InternalSettings"]
       35 GETUPVAL                         R1 1
       36 LOADK                            R3 K11 ["Skills"]
       37 LOADK                            R4 K3 ["ManageSkills"]
       38 NAMECALL                         R1 R1 K6 ["getText"]
       40 CALL                             R1 3 1
       41 SETTABLEKS                       R1 R0 K3 ["ManageSkills"]
       43 RETURN                           R0 1

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
        7 GETTABLEKS                       R2 R2 K2 ["FFlagMCPAssistantManagementMenu"]
        9 JUMPIF                           R2 ; [+7]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["FFlagExternalMCPUI"]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantMultiEditExternalClient"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K5 ["useState"]
       20 LOADB                            R4 0
       21 CALL                             R3 1 2
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K6 ["useContext"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K7 ["Context"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R5
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R5 K9 ["selectedModel"]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K10 ["locale"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U1
       53 NEWTABLE                         R9 0 2
       55 GETUPVAL                         R10 5
       56 GETTABLEKS                       R10 R10 K10 ["locale"]
       58 MOVE                             R11 R2
       59 SETLIST                          R9 R10 2 [1]
       61 CALL                             R7 2 1
       62 NEWTABLE                         R8 0 0
       64 GETUPVAL                         R9 6
       65 CALL                             R9 0 1
       66 GETTABLEKS                       R10 R0 K11 ["showApiKeys"]
       68 JUMPIFNOT                        R10 ; [+69]
       69 GETUPVAL                         R10 7
       70 GETUPVAL                         R11 8
       71 DUPTABLE                         R12 K15 [{["tag"] = "col gap-xxsmall auto-xy", ["LayoutOrder"]}]
       72 MOVE                             R13 R9
       73 CALL                             R13 0 1
       74 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       76 DUPTABLE                         R13 K18 [{"EditApiKeysButton", "CurrentModelText"}]
       77 GETUPVAL                         R14 7
       78 GETUPVAL                         R15 9
       79 DUPTABLE                         R16 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
       80 GETTABLEKS                       R17 R7 K25 ["EditApiKeys"]
       82 SETTABLEKS                       R17 R16 K19 ["text"]
       84 GETUPVAL                         R17 0
       85 GETTABLEKS                       R17 R17 K26 ["Enums"]
       87 GETTABLEKS                       R17 R17 K27 ["ButtonSize"]
       89 GETTABLEKS                       R17 R17 K28 ["XSmall"]
       91 SETTABLEKS                       R17 R16 K20 ["size"]
       93 GETUPVAL                         R17 0
       94 GETTABLEKS                       R17 R17 K26 ["Enums"]
       96 GETTABLEKS                       R17 R17 K29 ["ButtonVariant"]
       98 GETTABLEKS                       R17 R17 K30 ["Text"]
      100 SETTABLEKS                       R17 R16 K21 ["variant"]
      102 GETUPVAL                         R17 0
      103 GETTABLEKS                       R17 R17 K26 ["Enums"]
      105 GETTABLEKS                       R17 R17 K31 ["FillBehavior"]
      107 GETTABLEKS                       R17 R17 K32 ["Fill"]
      109 SETTABLEKS                       R17 R16 K22 ["fillBehavior"]
      111 MOVE                             R17 R9
      112 CALL                             R17 0 1
      113 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      115 NEWCLOSURE                       R17 P2
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K16 ["EditApiKeysButton"]
      123 GETUPVAL                         R14 7
      124 GETUPVAL                         R15 10
      125 DUPTABLE                         R16 K34 [{["tag"] = "auto-xy padding-left-small text-caption-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      126 SETTABLEKS                       R6 R16 K30 ["Text"]
      128 MOVE                             R17 R9
      129 CALL                             R17 0 1
      130 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K17 ["CurrentModelText"]
      135 CALL                             R10 3 1
      136 SETTABLEKS                       R10 R8 K35 ["EditApiKeysGroup"]
      138 JUMPIFNOT                        R2 ; [+49]
      139 GETTABLEKS                       R10 R0 K36 ["showIntegrations"]
      141 JUMPIFNOT                        R10 ; [+46]
      142 GETUPVAL                         R10 7
      143 GETUPVAL                         R11 9
      144 DUPTABLE                         R12 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      145 GETTABLEKS                       R13 R7 K37 ["ManageIntegrations"]
      147 SETTABLEKS                       R13 R12 K19 ["text"]
      149 GETUPVAL                         R13 0
      150 GETTABLEKS                       R13 R13 K26 ["Enums"]
      152 GETTABLEKS                       R13 R13 K27 ["ButtonSize"]
      154 GETTABLEKS                       R13 R13 K28 ["XSmall"]
      156 SETTABLEKS                       R13 R12 K20 ["size"]
      158 GETUPVAL                         R13 0
      159 GETTABLEKS                       R13 R13 K26 ["Enums"]
      161 GETTABLEKS                       R13 R13 K29 ["ButtonVariant"]
      163 GETTABLEKS                       R13 R13 K30 ["Text"]
      165 SETTABLEKS                       R13 R12 K21 ["variant"]
      167 GETUPVAL                         R13 0
      168 GETTABLEKS                       R13 R13 K26 ["Enums"]
      170 GETTABLEKS                       R13 R13 K31 ["FillBehavior"]
      172 GETTABLEKS                       R13 R13 K32 ["Fill"]
      174 SETTABLEKS                       R13 R12 K22 ["fillBehavior"]
      176 MOVE                             R13 R9
      177 CALL                             R13 0 1
      178 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      180 NEWCLOSURE                       R13 P3
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R13 R12 K23 ["onActivated"]
      185 CALL                             R10 2 1
      186 SETTABLEKS                       R10 R8 K38 ["ManageIntegrationsButton"]
      188 GETTABLEKS                       R10 R0 K39 ["showSkills"]
      190 JUMPIFNOT                        R10 ; [+46]
      191 GETUPVAL                         R10 7
      192 GETUPVAL                         R11 9
      193 DUPTABLE                         R12 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      194 GETTABLEKS                       R13 R7 K40 ["ManageSkills"]
      196 SETTABLEKS                       R13 R12 K19 ["text"]
      198 GETUPVAL                         R13 0
      199 GETTABLEKS                       R13 R13 K26 ["Enums"]
      201 GETTABLEKS                       R13 R13 K27 ["ButtonSize"]
      203 GETTABLEKS                       R13 R13 K28 ["XSmall"]
      205 SETTABLEKS                       R13 R12 K20 ["size"]
      207 GETUPVAL                         R13 0
      208 GETTABLEKS                       R13 R13 K26 ["Enums"]
      210 GETTABLEKS                       R13 R13 K29 ["ButtonVariant"]
      212 GETTABLEKS                       R13 R13 K30 ["Text"]
      214 SETTABLEKS                       R13 R12 K21 ["variant"]
      216 GETUPVAL                         R13 0
      217 GETTABLEKS                       R13 R13 K26 ["Enums"]
      219 GETTABLEKS                       R13 R13 K31 ["FillBehavior"]
      221 GETTABLEKS                       R13 R13 K32 ["Fill"]
      223 SETTABLEKS                       R13 R12 K22 ["fillBehavior"]
      225 MOVE                             R13 R9
      226 CALL                             R13 0 1
      227 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      229 NEWCLOSURE                       R13 P4
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R0
      232 SETTABLEKS                       R13 R12 K23 ["onActivated"]
      234 CALL                             R10 2 1
      235 SETTABLEKS                       R10 R8 K41 ["ManageSkillsButton"]
      237 GETTABLEKS                       R10 R0 K42 ["showInternalSettings"]
      239 JUMPIFNOT                        R10 ; [+46]
      240 GETUPVAL                         R10 7
      241 GETUPVAL                         R11 9
      242 DUPTABLE                         R12 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      243 GETTABLEKS                       R13 R7 K43 ["InternalSettings"]
      245 SETTABLEKS                       R13 R12 K19 ["text"]
      247 GETUPVAL                         R13 0
      248 GETTABLEKS                       R13 R13 K26 ["Enums"]
      250 GETTABLEKS                       R13 R13 K27 ["ButtonSize"]
      252 GETTABLEKS                       R13 R13 K28 ["XSmall"]
      254 SETTABLEKS                       R13 R12 K20 ["size"]
      256 GETUPVAL                         R13 0
      257 GETTABLEKS                       R13 R13 K26 ["Enums"]
      259 GETTABLEKS                       R13 R13 K29 ["ButtonVariant"]
      261 GETTABLEKS                       R13 R13 K30 ["Text"]
      263 SETTABLEKS                       R13 R12 K21 ["variant"]
      265 GETUPVAL                         R13 0
      266 GETTABLEKS                       R13 R13 K26 ["Enums"]
      268 GETTABLEKS                       R13 R13 K31 ["FillBehavior"]
      270 GETTABLEKS                       R13 R13 K32 ["Fill"]
      272 SETTABLEKS                       R13 R12 K22 ["fillBehavior"]
      274 MOVE                             R13 R9
      275 CALL                             R13 0 1
      276 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      278 NEWCLOSURE                       R13 P5
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R0
      281 SETTABLEKS                       R13 R12 K23 ["onActivated"]
      283 CALL                             R10 2 1
      284 SETTABLEKS                       R10 R8 K44 ["InternalSettingsButton"]
      286 GETUPVAL                         R10 2
      287 GETTABLEKS                       R10 R10 K45 ["useRef"]
      289 LOADNIL                          R11
      290 CALL                             R10 1 1
      291 GETUPVAL                         R11 2
      292 GETTABLEKS                       R11 R11 K45 ["useRef"]
      294 LOADNIL                          R12
      295 CALL                             R11 1 1
      296 GETUPVAL                         R12 2
      297 GETTABLEKS                       R12 R12 K46 ["useEffect"]
      299 NEWCLOSURE                       R13 P6
      300 CAPTURE                          VAL R3
      301 CAPTURE                          VAL R10
      302 CAPTURE                          VAL R4
      303 NEWTABLE                         R14 0 1
      305 MOVE                             R15 R3
      306 SETLIST                          R14 R15 1 [1]
      308 CALL                             R12 2 0
      309 GETUPVAL                         R12 2
      310 GETTABLEKS                       R12 R12 K46 ["useEffect"]
      312 NEWCLOSURE                       R13 P7
      313 CAPTURE                          VAL R11
      314 NEWTABLE                         R14 0 1
      316 GETTABLEKS                       R15 R11 K47 ["current"]
      318 SETLIST                          R14 R15 1 [1]
      320 CALL                             R12 2 0
      321 GETUPVAL                         R12 2
      322 GETTABLEKS                       R12 R12 K48 ["useCallback"]
      324 NEWCLOSURE                       R13 P8
      325 CAPTURE                          VAL R3
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R10
      328 CAPTURE                          UPVAL U1
      329 NEWTABLE                         R14 0 1
      331 MOVE                             R15 R3
      332 SETLIST                          R14 R15 1 [1]
      334 CALL                             R12 2 1
      335 GETUPVAL                         R13 7
      336 GETUPVAL                         R14 11
      337 GETTABLEKS                       R14 R14 K49 ["Root"]
      339 DUPTABLE                         R15 K51 [{"isOpen"}]
      340 SETTABLEKS                       R3 R15 K50 ["isOpen"]
      342 DUPTABLE                         R16 K54 [{"SettingsAnchor", "Content"}]
      343 GETUPVAL                         R17 7
      344 GETUPVAL                         R18 11
      345 GETTABLEKS                       R18 R18 K55 ["Anchor"]
      347 DUPTABLE                         R19 K57 [{"LayoutOrder", "ref"}]
      348 GETTABLEKS                       R20 R0 K14 ["LayoutOrder"]
      350 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      352 SETTABLEKS                       R10 R19 K56 ["ref"]
      354 DUPTABLE                         R20 K59 [{"Button"}]
      355 GETUPVAL                         R22 1
      356 GETTABLEKS                       R22 R22 K60 ["FFlagAssistantUseBuilderIcons"]
      358 JUMPIFNOT                        R22 ; [+41]
      359 GETUPVAL                         R21 7
      360 GETUPVAL                         R22 12
      361 DUPTABLE                         R23 K63 [{"icon", "size", "variant", "onActivated", "testId"}]
      362 GETUPVAL                         R24 0
      363 GETTABLEKS                       R24 R24 K26 ["Enums"]
      365 GETTABLEKS                       R24 R24 K64 ["IconName"]
      367 GETTABLEKS                       R24 R24 K65 ["ThreeDotsHorizontal"]
      369 SETTABLEKS                       R24 R23 K61 ["icon"]
      371 GETUPVAL                         R24 0
      372 GETTABLEKS                       R24 R24 K26 ["Enums"]
      374 GETTABLEKS                       R24 R24 K66 ["InputSize"]
      376 GETTABLEKS                       R24 R24 K28 ["XSmall"]
      378 SETTABLEKS                       R24 R23 K20 ["size"]
      380 GETUPVAL                         R24 0
      381 GETTABLEKS                       R24 R24 K26 ["Enums"]
      383 GETTABLEKS                       R24 R24 K29 ["ButtonVariant"]
      385 GETTABLEKS                       R24 R24 K67 ["Utility"]
      387 SETTABLEKS                       R24 R23 K21 ["variant"]
      389 SETTABLEKS                       R12 R23 K23 ["onActivated"]
      391 GETUPVAL                         R24 13
      392 GETTABLEKS                       R24 R24 K68 ["Header"]
      394 GETTABLEKS                       R24 R24 K69 ["SettingsButton"]
      396 SETTABLEKS                       R24 R23 K62 ["testId"]
      398 CALL                             R21 2 1
      399 JUMP                             ; [+13]
      400 GETUPVAL                         R21 7
      401 GETUPVAL                         R22 14
      402 DUPTABLE                         R23 K74 [{["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["testId"], ["onActivated"]}]
      403 GETUPVAL                         R24 13
      404 GETTABLEKS                       R24 R24 K68 ["Header"]
      406 GETTABLEKS                       R24 R24 K69 ["SettingsButton"]
      408 SETTABLEKS                       R24 R23 K62 ["testId"]
      410 SETTABLEKS                       R12 R23 K23 ["onActivated"]
      412 CALL                             R21 2 1
      413 SETTABLEKS                       R21 R20 K58 ["Button"]
      415 CALL                             R17 3 1
      416 SETTABLEKS                       R17 R16 K52 ["SettingsAnchor"]
      418 GETUPVAL                         R17 7
      419 GETUPVAL                         R18 11
      420 GETTABLEKS                       R18 R18 K53 ["Content"]
      422 DUPTABLE                         R19 K80 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      423 DUPTABLE                         R20 K83 [{"position", "offset"}]
      424 GETUPVAL                         R21 0
      425 GETTABLEKS                       R21 R21 K26 ["Enums"]
      427 GETTABLEKS                       R21 R21 K84 ["PopoverSide"]
      429 GETTABLEKS                       R21 R21 K85 ["Bottom"]
      431 SETTABLEKS                       R21 R20 K81 ["position"]
      433 GETTABLEKS                       R21 R1 K86 ["Gap"]
      435 GETTABLEKS                       R21 R21 K28 ["XSmall"]
      437 SETTABLEKS                       R21 R20 K82 ["offset"]
      439 SETTABLEKS                       R20 R19 K75 ["side"]
      441 GETUPVAL                         R20 0
      442 GETTABLEKS                       R20 R20 K26 ["Enums"]
      444 GETTABLEKS                       R20 R20 K87 ["PopoverAlign"]
      446 GETTABLEKS                       R20 R20 K88 ["Start"]
      448 SETTABLEKS                       R20 R19 K76 ["align"]
      450 NEWCLOSURE                       R20 P9
      451 CAPTURE                          VAL R4
      452 SETTABLEKS                       R20 R19 K79 ["onPressedOutside"]
      454 DUPTABLE                         R20 K90 [{"SettingsContent"}]
      455 GETUPVAL                         R21 7
      456 GETUPVAL                         R22 8
      457 DUPTABLE                         R23 K93 [{["tag"] = "col align-x-left gap-small auto-xy padding-small radius-medium bg-surface-100", ["ref"], ["testId"], ["sizeConstraint"]}]
      458 SETTABLEKS                       R11 R23 K56 ["ref"]
      460 GETUPVAL                         R24 13
      461 GETTABLEKS                       R24 R24 K68 ["Header"]
      463 GETTABLEKS                       R24 R24 K89 ["SettingsContent"]
      465 SETTABLEKS                       R24 R23 K62 ["testId"]
      467 DUPTABLE                         R24 K95 [{"MinSize"}]
      468 GETIMPORT                        R25 K98 [Vector2.new]
      470 LOADN                            R26 150
      471 LOADN                            R27 0
      472 CALL                             R25 2 1
      473 SETTABLEKS                       R25 R24 K94 ["MinSize"]
      475 SETTABLEKS                       R24 R23 K92 ["sizeConstraint"]
      477 MOVE                             R24 R8
      478 CALL                             R21 3 1
      479 SETTABLEKS                       R21 R20 K89 ["SettingsContent"]
      481 CALL                             R17 3 1
      482 SETTABLEKS                       R17 R16 K53 ["Content"]
      484 CALL                             R13 3 -1
      485 RETURN                           R13 -1

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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showApiKeys"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["FFlagAssistantUserSkills"]
       11 JUMPIFNOT                        R6 ; [+3]
       12 GETTABLEKS                       R5 R2 K3 ["showSkills"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 5
       27 GETUPVAL                         R8 6
       28 DUPTABLE                         R9 K8 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       29 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       31 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       33 DUPTABLE                         R10 K14 [{"FillArea", "Version", "Expand", "Settings", "DialogWidget"}]
       34 GETUPVAL                         R11 5
       35 GETUPVAL                         R12 6
       36 DUPTABLE                         R13 K16 [{["tag"] = "align-x-left align-y-center fill auto-y", ["LayoutOrder"]}]
       37 MOVE                             R14 R1
       38 CALL                             R14 0 1
       39 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       41 DUPTABLE                         R14 K18 [{"ToggleThreadsMenuButton"}]
       42 GETUPVAL                         R15 5
       43 GETUPVAL                         R16 7
       44 DUPTABLE                         R17 K19 [{"LayoutOrder"}]
       45 MOVE                             R18 R1
       46 CALL                             R18 0 1
       47 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
       49 CALL                             R15 2 1
       50 SETTABLEKS                       R15 R14 K17 ["ToggleThreadsMenuButton"]
       52 CALL                             R11 3 1
       53 SETTABLEKS                       R11 R10 K9 ["FillArea"]
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K20 ["FFlagAssistantVersionMismatchWarning"]
       58 JUMPIFNOT                        R12 ; [+9]
       59 GETUPVAL                         R11 5
       60 GETUPVAL                         R12 8
       61 DUPTABLE                         R13 K19 [{"LayoutOrder"}]
       62 MOVE                             R14 R1
       63 CALL                             R14 0 1
       64 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       66 CALL                             R11 2 1
       67 JUMP                             ; [+14]
       68 GETUPVAL                         R11 5
       69 GETUPVAL                         R12 9
       70 DUPTABLE                         R13 K23 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
       71 GETUPVAL                         R14 10
       72 GETTABLEKS                       R14 R14 K24 ["getVersion"]
       74 CALL                             R14 0 1
       75 SETTABLEKS                       R14 R13 K22 ["Text"]
       77 MOVE                             R14 R1
       78 CALL                             R14 0 1
       79 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K10 ["Version"]
       84 GETUPVAL                         R11 5
       85 GETUPVAL                         R12 11
       86 DUPTABLE                         R13 K19 [{"LayoutOrder"}]
       87 MOVE                             R14 R1
       88 CALL                             R14 0 1
       89 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K11 ["Expand"]
       94 GETUPVAL                         R11 5
       95 GETUPVAL                         R12 12
       96 DUPTABLE                         R13 K26 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings", "showSkills"}]
       97 MOVE                             R14 R1
       98 CALL                             R14 0 1
       99 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      101 SETTABLEKS                       R3 R13 K0 ["showIntegrations"]
      103 SETTABLEKS                       R4 R13 K1 ["showApiKeys"]
      105 SETTABLEKS                       R6 R13 K25 ["showInternalSettings"]
      107 SETTABLEKS                       R5 R13 K3 ["showSkills"]
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K12 ["Settings"]
      112 GETTABLEKS                       R11 R2 K27 ["root"]
      114 SETTABLEKS                       R11 R10 K13 ["DialogWidget"]
      116 CALL                             R7 3 -1
      117 RETURN                           R7 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K14 ["LLMProviderSelectionContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Util"]
       60 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R10 K19 ["ThreadsWindow"]
       69 GETTABLEKS                       R10 R10 K20 ["ToggleThreadsMenuButton"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Resources"]
       76 GETTABLEKS                       R11 R11 K22 ["Localization"]
       78 GETTABLEKS                       R11 R11 K23 ["Translator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K24 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K17 ["Util"]
       90 GETTABLEKS                       R13 R13 K25 ["VersionResolver"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K26 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K27 ["useEditContent"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K26 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K28 ["useGetThread"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K29 ["useSettingsDialog"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R4 K30 ["Button"]
      116 GETTABLEKS                       R17 R4 K31 ["Icon"]
      118 GETTABLEKS                       R18 R4 K32 ["IconButton"]
      120 GETTABLEKS                       R19 R4 K33 ["Image"]
      122 GETTABLEKS                       R20 R4 K34 ["Popover"]
      124 GETTABLEKS                       R21 R4 K35 ["Text"]
      126 GETTABLEKS                       R22 R4 K36 ["View"]
      128 GETTABLEKS                       R23 R7 K37 ["createNextOrder"]
      130 GETTABLEKS                       R24 R6 K38 ["createElement"]
      132 GETTABLEKS                       R25 R11 K39 ["DEFAULT_STUDIO_MODEL"]
      134 DUPCLOSURE                       R26 K40 [PROTO_0]
      135 CAPTURE                          VAL R3
      136 DUPTABLE                         R27 K45 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"}]
      137 DUPCLOSURE                       R28 K46 [PROTO_4]
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R22
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R27
      147 CAPTURE                          VAL R1
      148 DUPCLOSURE                       R29 K47 [PROTO_17]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R1
      164 DUPCLOSURE                       R30 K48 [PROTO_23]
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R8
      176 DUPCLOSURE                       R31 K49 [PROTO_25]
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R30
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R29
      190 RETURN                           R31 1
