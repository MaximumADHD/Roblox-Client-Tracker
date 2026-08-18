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
        9 JUMPIF                           R2 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantMultiEditExternalClient"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["useState"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["useContext"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K6 ["Context"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R5 K8 ["selectedModel"]
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R10 R10 K9 ["locale"]
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U1
       49 NEWTABLE                         R9 0 2
       51 GETUPVAL                         R10 5
       52 GETTABLEKS                       R10 R10 K9 ["locale"]
       54 MOVE                             R11 R2
       55 SETLIST                          R9 R10 2 [1]
       57 CALL                             R7 2 1
       58 NEWTABLE                         R8 0 0
       60 GETUPVAL                         R9 6
       61 CALL                             R9 0 1
       62 GETTABLEKS                       R10 R0 K10 ["showApiKeys"]
       64 JUMPIFNOT                        R10 ; [+69]
       65 GETUPVAL                         R10 7
       66 GETUPVAL                         R11 8
       67 DUPTABLE                         R12 K14 [{["tag"] = "col gap-xxsmall auto-xy", ["LayoutOrder"]}]
       68 MOVE                             R13 R9
       69 CALL                             R13 0 1
       70 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       72 DUPTABLE                         R13 K17 [{"EditApiKeysButton", "CurrentModelText"}]
       73 GETUPVAL                         R14 7
       74 GETUPVAL                         R15 9
       75 DUPTABLE                         R16 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
       76 GETTABLEKS                       R17 R7 K24 ["EditApiKeys"]
       78 SETTABLEKS                       R17 R16 K18 ["text"]
       80 GETUPVAL                         R17 0
       81 GETTABLEKS                       R17 R17 K25 ["Enums"]
       83 GETTABLEKS                       R17 R17 K26 ["ButtonSize"]
       85 GETTABLEKS                       R17 R17 K27 ["XSmall"]
       87 SETTABLEKS                       R17 R16 K19 ["size"]
       89 GETUPVAL                         R17 0
       90 GETTABLEKS                       R17 R17 K25 ["Enums"]
       92 GETTABLEKS                       R17 R17 K28 ["ButtonVariant"]
       94 GETTABLEKS                       R17 R17 K29 ["Text"]
       96 SETTABLEKS                       R17 R16 K20 ["variant"]
       98 GETUPVAL                         R17 0
       99 GETTABLEKS                       R17 R17 K25 ["Enums"]
      101 GETTABLEKS                       R17 R17 K30 ["FillBehavior"]
      103 GETTABLEKS                       R17 R17 K31 ["Fill"]
      105 SETTABLEKS                       R17 R16 K21 ["fillBehavior"]
      107 MOVE                             R17 R9
      108 CALL                             R17 0 1
      109 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      111 NEWCLOSURE                       R17 P2
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K15 ["EditApiKeysButton"]
      119 GETUPVAL                         R14 7
      120 GETUPVAL                         R15 10
      121 DUPTABLE                         R16 K33 [{["tag"] = "auto-xy padding-left-small text-caption-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      122 SETTABLEKS                       R6 R16 K29 ["Text"]
      124 MOVE                             R17 R9
      125 CALL                             R17 0 1
      126 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K16 ["CurrentModelText"]
      131 CALL                             R10 3 1
      132 SETTABLEKS                       R10 R8 K34 ["EditApiKeysGroup"]
      134 JUMPIFNOT                        R2 ; [+49]
      135 GETTABLEKS                       R10 R0 K35 ["showIntegrations"]
      137 JUMPIFNOT                        R10 ; [+46]
      138 GETUPVAL                         R10 7
      139 GETUPVAL                         R11 9
      140 DUPTABLE                         R12 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      141 GETTABLEKS                       R13 R7 K36 ["ManageIntegrations"]
      143 SETTABLEKS                       R13 R12 K18 ["text"]
      145 GETUPVAL                         R13 0
      146 GETTABLEKS                       R13 R13 K25 ["Enums"]
      148 GETTABLEKS                       R13 R13 K26 ["ButtonSize"]
      150 GETTABLEKS                       R13 R13 K27 ["XSmall"]
      152 SETTABLEKS                       R13 R12 K19 ["size"]
      154 GETUPVAL                         R13 0
      155 GETTABLEKS                       R13 R13 K25 ["Enums"]
      157 GETTABLEKS                       R13 R13 K28 ["ButtonVariant"]
      159 GETTABLEKS                       R13 R13 K29 ["Text"]
      161 SETTABLEKS                       R13 R12 K20 ["variant"]
      163 GETUPVAL                         R13 0
      164 GETTABLEKS                       R13 R13 K25 ["Enums"]
      166 GETTABLEKS                       R13 R13 K30 ["FillBehavior"]
      168 GETTABLEKS                       R13 R13 K31 ["Fill"]
      170 SETTABLEKS                       R13 R12 K21 ["fillBehavior"]
      172 MOVE                             R13 R9
      173 CALL                             R13 0 1
      174 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      176 NEWCLOSURE                       R13 P3
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R0
      179 SETTABLEKS                       R13 R12 K22 ["onActivated"]
      181 CALL                             R10 2 1
      182 SETTABLEKS                       R10 R8 K37 ["ManageIntegrationsButton"]
      184 GETTABLEKS                       R10 R0 K38 ["showSkills"]
      186 JUMPIFNOT                        R10 ; [+46]
      187 GETUPVAL                         R10 7
      188 GETUPVAL                         R11 9
      189 DUPTABLE                         R12 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      190 GETTABLEKS                       R13 R7 K39 ["ManageSkills"]
      192 SETTABLEKS                       R13 R12 K18 ["text"]
      194 GETUPVAL                         R13 0
      195 GETTABLEKS                       R13 R13 K25 ["Enums"]
      197 GETTABLEKS                       R13 R13 K26 ["ButtonSize"]
      199 GETTABLEKS                       R13 R13 K27 ["XSmall"]
      201 SETTABLEKS                       R13 R12 K19 ["size"]
      203 GETUPVAL                         R13 0
      204 GETTABLEKS                       R13 R13 K25 ["Enums"]
      206 GETTABLEKS                       R13 R13 K28 ["ButtonVariant"]
      208 GETTABLEKS                       R13 R13 K29 ["Text"]
      210 SETTABLEKS                       R13 R12 K20 ["variant"]
      212 GETUPVAL                         R13 0
      213 GETTABLEKS                       R13 R13 K25 ["Enums"]
      215 GETTABLEKS                       R13 R13 K30 ["FillBehavior"]
      217 GETTABLEKS                       R13 R13 K31 ["Fill"]
      219 SETTABLEKS                       R13 R12 K21 ["fillBehavior"]
      221 MOVE                             R13 R9
      222 CALL                             R13 0 1
      223 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      225 NEWCLOSURE                       R13 P4
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R13 R12 K22 ["onActivated"]
      230 CALL                             R10 2 1
      231 SETTABLEKS                       R10 R8 K40 ["ManageSkillsButton"]
      233 GETTABLEKS                       R10 R0 K41 ["showInternalSettings"]
      235 JUMPIFNOT                        R10 ; [+46]
      236 GETUPVAL                         R10 7
      237 GETUPVAL                         R11 9
      238 DUPTABLE                         R12 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      239 GETTABLEKS                       R13 R7 K42 ["InternalSettings"]
      241 SETTABLEKS                       R13 R12 K18 ["text"]
      243 GETUPVAL                         R13 0
      244 GETTABLEKS                       R13 R13 K25 ["Enums"]
      246 GETTABLEKS                       R13 R13 K26 ["ButtonSize"]
      248 GETTABLEKS                       R13 R13 K27 ["XSmall"]
      250 SETTABLEKS                       R13 R12 K19 ["size"]
      252 GETUPVAL                         R13 0
      253 GETTABLEKS                       R13 R13 K25 ["Enums"]
      255 GETTABLEKS                       R13 R13 K28 ["ButtonVariant"]
      257 GETTABLEKS                       R13 R13 K29 ["Text"]
      259 SETTABLEKS                       R13 R12 K20 ["variant"]
      261 GETUPVAL                         R13 0
      262 GETTABLEKS                       R13 R13 K25 ["Enums"]
      264 GETTABLEKS                       R13 R13 K30 ["FillBehavior"]
      266 GETTABLEKS                       R13 R13 K31 ["Fill"]
      268 SETTABLEKS                       R13 R12 K21 ["fillBehavior"]
      270 MOVE                             R13 R9
      271 CALL                             R13 0 1
      272 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      274 NEWCLOSURE                       R13 P5
      275 CAPTURE                          VAL R4
      276 CAPTURE                          VAL R0
      277 SETTABLEKS                       R13 R12 K22 ["onActivated"]
      279 CALL                             R10 2 1
      280 SETTABLEKS                       R10 R8 K43 ["InternalSettingsButton"]
      282 GETUPVAL                         R10 2
      283 GETTABLEKS                       R10 R10 K44 ["useRef"]
      285 LOADNIL                          R11
      286 CALL                             R10 1 1
      287 GETUPVAL                         R11 2
      288 GETTABLEKS                       R11 R11 K44 ["useRef"]
      290 LOADNIL                          R12
      291 CALL                             R11 1 1
      292 GETUPVAL                         R12 2
      293 GETTABLEKS                       R12 R12 K45 ["useEffect"]
      295 NEWCLOSURE                       R13 P6
      296 CAPTURE                          VAL R3
      297 CAPTURE                          VAL R10
      298 CAPTURE                          VAL R4
      299 NEWTABLE                         R14 0 1
      301 MOVE                             R15 R3
      302 SETLIST                          R14 R15 1 [1]
      304 CALL                             R12 2 0
      305 GETUPVAL                         R12 2
      306 GETTABLEKS                       R12 R12 K45 ["useEffect"]
      308 NEWCLOSURE                       R13 P7
      309 CAPTURE                          VAL R11
      310 NEWTABLE                         R14 0 1
      312 GETTABLEKS                       R15 R11 K46 ["current"]
      314 SETLIST                          R14 R15 1 [1]
      316 CALL                             R12 2 0
      317 GETUPVAL                         R12 2
      318 GETTABLEKS                       R12 R12 K47 ["useCallback"]
      320 NEWCLOSURE                       R13 P8
      321 CAPTURE                          VAL R3
      322 CAPTURE                          VAL R4
      323 CAPTURE                          VAL R10
      324 CAPTURE                          UPVAL U1
      325 NEWTABLE                         R14 0 1
      327 MOVE                             R15 R3
      328 SETLIST                          R14 R15 1 [1]
      330 CALL                             R12 2 1
      331 GETUPVAL                         R13 7
      332 GETUPVAL                         R14 11
      333 GETTABLEKS                       R14 R14 K48 ["Root"]
      335 DUPTABLE                         R15 K50 [{"isOpen"}]
      336 SETTABLEKS                       R3 R15 K49 ["isOpen"]
      338 DUPTABLE                         R16 K53 [{"SettingsAnchor", "Content"}]
      339 GETUPVAL                         R17 7
      340 GETUPVAL                         R18 11
      341 GETTABLEKS                       R18 R18 K54 ["Anchor"]
      343 DUPTABLE                         R19 K56 [{"LayoutOrder", "ref"}]
      344 GETTABLEKS                       R20 R0 K13 ["LayoutOrder"]
      346 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      348 SETTABLEKS                       R10 R19 K55 ["ref"]
      350 DUPTABLE                         R20 K58 [{"Button"}]
      351 GETUPVAL                         R22 1
      352 GETTABLEKS                       R22 R22 K59 ["FFlagAssistantUseBuilderIcons"]
      354 JUMPIFNOT                        R22 ; [+41]
      355 GETUPVAL                         R21 7
      356 GETUPVAL                         R22 12
      357 DUPTABLE                         R23 K62 [{"icon", "size", "variant", "onActivated", "testId"}]
      358 GETUPVAL                         R24 0
      359 GETTABLEKS                       R24 R24 K25 ["Enums"]
      361 GETTABLEKS                       R24 R24 K63 ["IconName"]
      363 GETTABLEKS                       R24 R24 K64 ["ThreeDotsHorizontal"]
      365 SETTABLEKS                       R24 R23 K60 ["icon"]
      367 GETUPVAL                         R24 0
      368 GETTABLEKS                       R24 R24 K25 ["Enums"]
      370 GETTABLEKS                       R24 R24 K65 ["InputSize"]
      372 GETTABLEKS                       R24 R24 K27 ["XSmall"]
      374 SETTABLEKS                       R24 R23 K19 ["size"]
      376 GETUPVAL                         R24 0
      377 GETTABLEKS                       R24 R24 K25 ["Enums"]
      379 GETTABLEKS                       R24 R24 K28 ["ButtonVariant"]
      381 GETTABLEKS                       R24 R24 K66 ["Utility"]
      383 SETTABLEKS                       R24 R23 K20 ["variant"]
      385 SETTABLEKS                       R12 R23 K22 ["onActivated"]
      387 GETUPVAL                         R24 13
      388 GETTABLEKS                       R24 R24 K67 ["Header"]
      390 GETTABLEKS                       R24 R24 K68 ["SettingsButton"]
      392 SETTABLEKS                       R24 R23 K61 ["testId"]
      394 CALL                             R21 2 1
      395 JUMP                             ; [+13]
      396 GETUPVAL                         R21 7
      397 GETUPVAL                         R22 14
      398 DUPTABLE                         R23 K73 [{["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-800-800 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["testId"], ["onActivated"]}]
      399 GETUPVAL                         R24 13
      400 GETTABLEKS                       R24 R24 K67 ["Header"]
      402 GETTABLEKS                       R24 R24 K68 ["SettingsButton"]
      404 SETTABLEKS                       R24 R23 K61 ["testId"]
      406 SETTABLEKS                       R12 R23 K22 ["onActivated"]
      408 CALL                             R21 2 1
      409 SETTABLEKS                       R21 R20 K57 ["Button"]
      411 CALL                             R17 3 1
      412 SETTABLEKS                       R17 R16 K51 ["SettingsAnchor"]
      414 GETUPVAL                         R17 7
      415 GETUPVAL                         R18 11
      416 GETTABLEKS                       R18 R18 K52 ["Content"]
      418 DUPTABLE                         R19 K79 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      419 DUPTABLE                         R20 K82 [{"position", "offset"}]
      420 GETUPVAL                         R21 0
      421 GETTABLEKS                       R21 R21 K25 ["Enums"]
      423 GETTABLEKS                       R21 R21 K83 ["PopoverSide"]
      425 GETTABLEKS                       R21 R21 K84 ["Bottom"]
      427 SETTABLEKS                       R21 R20 K80 ["position"]
      429 GETTABLEKS                       R21 R1 K85 ["Gap"]
      431 GETTABLEKS                       R21 R21 K27 ["XSmall"]
      433 SETTABLEKS                       R21 R20 K81 ["offset"]
      435 SETTABLEKS                       R20 R19 K74 ["side"]
      437 GETUPVAL                         R20 0
      438 GETTABLEKS                       R20 R20 K25 ["Enums"]
      440 GETTABLEKS                       R20 R20 K86 ["PopoverAlign"]
      442 GETTABLEKS                       R20 R20 K87 ["Start"]
      444 SETTABLEKS                       R20 R19 K75 ["align"]
      446 NEWCLOSURE                       R20 P9
      447 CAPTURE                          VAL R4
      448 SETTABLEKS                       R20 R19 K78 ["onPressedOutside"]
      450 DUPTABLE                         R20 K89 [{"SettingsContent"}]
      451 GETUPVAL                         R21 7
      452 GETUPVAL                         R22 8
      453 DUPTABLE                         R23 K92 [{["tag"] = "col align-x-left gap-small auto-xy padding-small radius-medium bg-surface-100", ["ref"], ["testId"], ["sizeConstraint"]}]
      454 SETTABLEKS                       R11 R23 K55 ["ref"]
      456 GETUPVAL                         R24 13
      457 GETTABLEKS                       R24 R24 K67 ["Header"]
      459 GETTABLEKS                       R24 R24 K88 ["SettingsContent"]
      461 SETTABLEKS                       R24 R23 K61 ["testId"]
      463 DUPTABLE                         R24 K94 [{"MinSize"}]
      464 GETIMPORT                        R25 K97 [Vector2.new]
      466 LOADN                            R26 150
      467 LOADN                            R27 0
      468 CALL                             R25 2 1
      469 SETTABLEKS                       R25 R24 K93 ["MinSize"]
      471 SETTABLEKS                       R24 R23 K91 ["sizeConstraint"]
      473 MOVE                             R24 R8
      474 CALL                             R21 3 1
      475 SETTABLEKS                       R21 R20 K88 ["SettingsContent"]
      477 CALL                             R17 3 1
      478 SETTABLEKS                       R17 R16 K52 ["Content"]
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showApiKeys"]
        8 GETTABLEKS                       R5 R2 K2 ["showSkills"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R8 0 0
       19 CALL                             R6 2 1
       20 GETUPVAL                         R7 5
       21 GETUPVAL                         R8 6
       22 DUPTABLE                         R9 K7 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       23 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       25 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       27 DUPTABLE                         R10 K14 [{"FillArea", "Version", "HarnessSplitTag", "Expand", "Settings", "DialogWidget"}]
       28 GETUPVAL                         R11 5
       29 GETUPVAL                         R12 6
       30 DUPTABLE                         R13 K16 [{["tag"] = "row align-x-left align-y-center fill gap-xsmall auto-y", ["LayoutOrder"]}]
       31 MOVE                             R14 R1
       32 CALL                             R14 0 1
       33 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       35 DUPTABLE                         R14 K19 [{"ToggleThreadsMenuButton", "AcpSessionIdTag"}]
       36 GETUPVAL                         R15 5
       37 GETUPVAL                         R16 7
       38 DUPTABLE                         R17 K20 [{"LayoutOrder"}]
       39 MOVE                             R18 R1
       40 CALL                             R18 0 1
       41 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       43 CALL                             R15 2 1
       44 SETTABLEKS                       R15 R14 K17 ["ToggleThreadsMenuButton"]
       46 GETUPVAL                         R16 3
       47 GETTABLEKS                       R16 R16 K21 ["FFlagDebugLogAssistantUI"]
       49 JUMPIFNOT                        R16 ; [+9]
       50 GETUPVAL                         R15 5
       51 GETUPVAL                         R16 8
       52 DUPTABLE                         R17 K20 [{"LayoutOrder"}]
       53 MOVE                             R18 R1
       54 CALL                             R18 0 1
       55 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       57 CALL                             R15 2 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R15
       60 SETTABLEKS                       R15 R14 K18 ["AcpSessionIdTag"]
       62 CALL                             R11 3 1
       63 SETTABLEKS                       R11 R10 K8 ["FillArea"]
       65 GETUPVAL                         R12 3
       66 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantVersionMismatchWarning"]
       68 JUMPIFNOT                        R12 ; [+9]
       69 GETUPVAL                         R11 5
       70 GETUPVAL                         R12 9
       71 DUPTABLE                         R13 K20 [{"LayoutOrder"}]
       72 MOVE                             R14 R1
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       76 CALL                             R11 2 1
       77 JUMP                             ; [+14]
       78 GETUPVAL                         R11 5
       79 GETUPVAL                         R12 10
       80 DUPTABLE                         R13 K25 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
       81 GETUPVAL                         R14 11
       82 GETTABLEKS                       R14 R14 K26 ["getVersion"]
       84 CALL                             R14 0 1
       85 SETTABLEKS                       R14 R13 K24 ["Text"]
       87 MOVE                             R14 R1
       88 CALL                             R14 0 1
       89 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K9 ["Version"]
       94 GETUPVAL                         R12 12
       95 CALL                             R12 0 1
       96 JUMPIFNOT                        R12 ; [+16]
       97 GETUPVAL                         R11 5
       98 GETUPVAL                         R12 10
       99 DUPTABLE                         R13 K29 [{["tag"] = "auto-xy text-caption-small content-muted", ["Text"] = "ACP", ["LayoutOrder"], ["testId"]}]
      100 MOVE                             R14 R1
      101 CALL                             R14 0 1
      102 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      104 GETUPVAL                         R14 13
      105 GETTABLEKS                       R14 R14 K30 ["Header"]
      107 GETTABLEKS                       R14 R14 K10 ["HarnessSplitTag"]
      109 SETTABLEKS                       R14 R13 K28 ["testId"]
      111 CALL                             R11 2 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R11
      114 SETTABLEKS                       R11 R10 K10 ["HarnessSplitTag"]
      116 GETUPVAL                         R11 5
      117 GETUPVAL                         R12 14
      118 DUPTABLE                         R13 K20 [{"LayoutOrder"}]
      119 MOVE                             R14 R1
      120 CALL                             R14 0 1
      121 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K11 ["Expand"]
      126 GETUPVAL                         R11 5
      127 GETUPVAL                         R12 15
      128 DUPTABLE                         R13 K32 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings", "showSkills"}]
      129 MOVE                             R14 R1
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      133 SETTABLEKS                       R3 R13 K0 ["showIntegrations"]
      135 SETTABLEKS                       R4 R13 K1 ["showApiKeys"]
      137 SETTABLEKS                       R6 R13 K31 ["showInternalSettings"]
      139 SETTABLEKS                       R5 R13 K2 ["showSkills"]
      141 CALL                             R11 2 1
      142 SETTABLEKS                       R11 R10 K12 ["Settings"]
      144 GETTABLEKS                       R11 R2 K33 ["root"]
      146 SETTABLEKS                       R11 R10 K13 ["DialogWidget"]
      148 CALL                             R7 3 -1
      149 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["FlagUtils"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Parent"]
       35 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Components"]
       42 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       44 GETTABLEKS                       R7 R7 K15 ["LLMProviderSelectionContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Parent"]
       51 GETTABLEKS                       R8 R8 K16 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Parent"]
       58 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K18 ["Util"]
       65 GETTABLEKS                       R10 R10 K19 ["TestIds"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R11 K20 ["ThreadsWindow"]
       74 GETTABLEKS                       R11 R11 K21 ["ToggleThreadsMenuButton"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K22 ["Resources"]
       81 GETTABLEKS                       R12 R12 K23 ["Localization"]
       83 GETTABLEKS                       R12 R12 K24 ["Translator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K25 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K18 ["Util"]
       95 GETTABLEKS                       R14 R14 K26 ["VersionResolver"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K28 ["useCurrentThread"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      109 GETTABLEKS                       R16 R16 K29 ["useEditContent"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      116 GETTABLEKS                       R17 R17 K30 ["useGetThread"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K27 ["Hooks"]
      123 GETTABLEKS                       R18 R18 K31 ["useSettingsDialog"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R5 K32 ["Button"]
      128 GETTABLEKS                       R19 R5 K33 ["Icon"]
      130 GETTABLEKS                       R20 R5 K34 ["IconButton"]
      132 GETTABLEKS                       R21 R5 K35 ["Image"]
      134 GETTABLEKS                       R22 R5 K36 ["Popover"]
      136 GETTABLEKS                       R23 R5 K37 ["Text"]
      138 GETTABLEKS                       R24 R5 K38 ["View"]
      140 GETTABLEKS                       R25 R8 K39 ["createNextOrder"]
      142 GETTABLEKS                       R26 R7 K40 ["createElement"]
      144 GETTABLEKS                       R27 R3 K41 ["getIsAssistantHarnessSplit"]
      146 GETTABLEKS                       R28 R12 K42 ["DEFAULT_STUDIO_MODEL"]
      148 DUPCLOSURE                       R29 K43 [PROTO_0]
      149 CAPTURE                          VAL R4
      150 DUPTABLE                         R30 K48 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"}]
      151 DUPCLOSURE                       R31 K49 [PROTO_4]
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R24
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R30
      161 CAPTURE                          VAL R1
      162 DUPCLOSURE                       R32 K50 [PROTO_17]
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R28
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R26
      171 CAPTURE                          VAL R24
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R1
      178 DUPCLOSURE                       R33 K51 [PROTO_23]
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R25
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R9
      190 DUPCLOSURE                       R34 K52 [PROTO_24]
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R9
      196 DUPCLOSURE                       R35 K53 [PROTO_26]
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R34
      206 CAPTURE                          VAL R33
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R31
      212 CAPTURE                          VAL R32
      213 RETURN                           R35 1
