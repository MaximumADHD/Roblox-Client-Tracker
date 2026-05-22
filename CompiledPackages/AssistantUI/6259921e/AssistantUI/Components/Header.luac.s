PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_1:
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
       26 JUMPIFNOT                        R1 ; [+34]
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
       39 JUMPIFEQKNIL                     R15 ; [+17]
       41 GETTABLEKS                       R15 R14 K2 ["expanded"]
       43 JUMPIFEQ                         R15 R4 ; [+13]
       45 GETUPVAL                         R15 0
       46 DUPTABLE                         R16 K6 [{"messageId", "contentId", "transformFn"}]
       47 SETTABLEKS                       R8 R16 K3 ["messageId"]
       49 SETTABLEKS                       R13 R16 K4 ["contentId"]
       51 NEWCLOSURE                       R17 P0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R17 R16 K5 ["transformFn"]
       56 CALL                             R15 1 0
       57 FORGLOOP                         R10 2 ; [-21]
       59 FORGLOOP                         R5 2 ; [-28]
       61 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       22 CAPTURE                          UPVAL U4
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R1
       26 MOVE                             R9 R2
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 5
       31 GETUPVAL                         R7 6
       32 DUPTABLE                         R8 K11 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
       33 GETUPVAL                         R10 7
       34 GETTABLE                         R9 R10 R4
       35 SETTABLEKS                       R9 R8 K6 ["icon"]
       37 LOADK                            R9 K12 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
       38 SETTABLEKS                       R9 R8 K7 ["tag"]
       40 LOADK                            R9 K13 ["size-400-400 content-emphasis"]
       41 SETTABLEKS                       R9 R8 K8 ["iconTag"]
       43 SETTABLEKS                       R5 R8 K9 ["onActivated"]
       45 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       47 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       49 CALL                             R6 2 -1
       50 RETURN                           R6 -1

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
        0 DUPTABLE                         R0 K4 [{"ClearConversation", "ManageIntegrations", "EditApiKeys", "InternalSettings"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Settings"]
        3 LOADK                            R4 K0 ["ClearConversation"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ClearConversation"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K7 ["IntegrationManagement"]
       13 LOADK                            R4 K1 ["ManageIntegrations"]
       14 NAMECALL                         R1 R1 K6 ["getText"]
       16 CALL                             R1 3 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K1 ["ManageIntegrations"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K8 ["SettingsDialog"]
       23 LOADK                            R4 K2 ["EditApiKeys"]
       24 NAMECALL                         R1 R1 K6 ["getText"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K2 ["EditApiKeys"]
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETUPVAL                         R1 0
       33 LOADK                            R3 K9 ["InternalFeatures"]
       34 LOADK                            R4 K10 ["Title"]
       35 NAMECALL                         R1 R1 K6 ["getText"]
       37 CALL                             R1 3 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K3 ["InternalSettings"]
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
        4 GETTABLEKS                       R0 R0 K0 ["showInternalSettings"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+32]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 JUMPIFNOT                        R0 ; [+18]
       13 LOADK                            R3 K1 ["LayerCollector"]
       14 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETTABLEKS                       R2 R1 K3 ["AbsoluteSize"]
       20 GETTABLEKS                       R2 R2 K4 ["Y"]
       22 GETUPVAL                         R3 4
       23 CALL                             R3 0 1
       24 JUMPIFNOTLT                      R2 R3 ; [+6]
       26 GETIMPORT                        R2 K6 [warn]
       28 LOADK                            R3 K7 ["Assistant: Widget too small to display settings menu"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 2
       32 LOADB                            R2 1
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 2
       36 GETUPVAL                         R2 1
       37 NOT                              R1 R2
       38 CALL                             R0 1 0
       39 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K4 ["reasonDisabled"]
       15 MOVE                             R4 R3
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETTABLEKS                       R5 R3 K4 ["reasonDisabled"]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K5 ["Generation"]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 GETUPVAL                         R5 4
       27 CALL                             R5 0 1
       28 JUMPIF                           R5 ; [+5]
       29 GETUPVAL                         R5 5
       30 CALL                             R5 0 1
       31 JUMPIFNOT                        R5 ; [+2]
       32 GETUPVAL                         R5 6
       33 CALL                             R5 0 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K6 ["useState"]
       37 LOADB                            R7 0
       38 CALL                             R6 1 2
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K2 ["useContext"]
       42 GETUPVAL                         R9 7
       43 GETTABLEKS                       R9 R9 K3 ["Context"]
       45 CALL                             R8 1 1
       46 LOADNIL                          R9
       47 GETUPVAL                         R10 8
       48 CALL                             R10 0 1
       49 JUMPIF                           R10 ; [+3]
       50 GETUPVAL                         R10 9
       51 CALL                             R10 0 1
       52 MOVE                             R9 R10
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       56 NEWCLOSURE                       R11 P0
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U11
       60 NEWTABLE                         R12 0 2
       62 GETTABLEKS                       R13 R8 K8 ["selectedModel"]
       64 GETUPVAL                         R14 11
       65 GETTABLEKS                       R14 R14 K9 ["locale"]
       67 SETLIST                          R12 R13 2 [1]
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K7 ["useMemo"]
       73 NEWCLOSURE                       R12 P1
       74 CAPTURE                          UPVAL U11
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U12
       77 NEWTABLE                         R13 0 2
       79 GETUPVAL                         R14 11
       80 GETTABLEKS                       R14 R14 K9 ["locale"]
       82 MOVE                             R15 R5
       83 SETLIST                          R13 R14 2 [1]
       85 CALL                             R11 2 1
       86 NEWTABLE                         R12 0 0
       88 GETUPVAL                         R13 13
       89 CALL                             R13 0 1
       90 GETTABLEKS                       R14 R0 K10 ["showApiKeys"]
       92 JUMPIFNOT                        R14 ; [+75]
       93 GETUPVAL                         R14 14
       94 GETUPVAL                         R15 15
       95 DUPTABLE                         R16 K13 [{"tag", "LayoutOrder"}]
       96 LOADK                            R17 K14 ["col auto-xy gap-xxsmall"]
       97 SETTABLEKS                       R17 R16 K11 ["tag"]
       99 MOVE                             R17 R13
      100 CALL                             R17 0 1
      101 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      103 DUPTABLE                         R17 K17 [{"EditApiKeysButton", "CurrentModelText"}]
      104 GETUPVAL                         R18 14
      105 GETUPVAL                         R19 16
      106 DUPTABLE                         R20 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      107 GETTABLEKS                       R21 R11 K24 ["EditApiKeys"]
      109 SETTABLEKS                       R21 R20 K18 ["text"]
      111 GETUPVAL                         R21 0
      112 GETTABLEKS                       R21 R21 K25 ["Enums"]
      114 GETTABLEKS                       R21 R21 K26 ["ButtonSize"]
      116 GETTABLEKS                       R21 R21 K27 ["XSmall"]
      118 SETTABLEKS                       R21 R20 K19 ["size"]
      120 GETUPVAL                         R21 0
      121 GETTABLEKS                       R21 R21 K25 ["Enums"]
      123 GETTABLEKS                       R21 R21 K28 ["ButtonVariant"]
      125 GETTABLEKS                       R21 R21 K29 ["Text"]
      127 SETTABLEKS                       R21 R20 K20 ["variant"]
      129 GETUPVAL                         R21 0
      130 GETTABLEKS                       R21 R21 K25 ["Enums"]
      132 GETTABLEKS                       R21 R21 K30 ["FillBehavior"]
      134 GETTABLEKS                       R21 R21 K31 ["Fill"]
      136 SETTABLEKS                       R21 R20 K21 ["fillBehavior"]
      138 MOVE                             R21 R13
      139 CALL                             R21 0 1
      140 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      142 NEWCLOSURE                       R21 P2
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R21 R20 K22 ["onActivated"]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K15 ["EditApiKeysButton"]
      150 GETUPVAL                         R18 14
      151 GETUPVAL                         R19 17
      152 DUPTABLE                         R20 K32 [{"tag", "Text", "LayoutOrder"}]
      153 LOADK                            R21 K33 ["auto-xy text-caption-medium text-wrap text-align-x-left padding-left-small"]
      154 SETTABLEKS                       R21 R20 K11 ["tag"]
      156 SETTABLEKS                       R10 R20 K29 ["Text"]
      158 MOVE                             R21 R13
      159 CALL                             R21 0 1
      160 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K16 ["CurrentModelText"]
      165 CALL                             R14 3 1
      166 SETTABLEKS                       R14 R12 K34 ["EditApiKeysGroup"]
      168 JUMPIFNOT                        R5 ; [+49]
      169 GETTABLEKS                       R14 R0 K35 ["showIntegrations"]
      171 JUMPIFNOT                        R14 ; [+46]
      172 GETUPVAL                         R14 14
      173 GETUPVAL                         R15 16
      174 DUPTABLE                         R16 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      175 GETTABLEKS                       R17 R11 K36 ["ManageIntegrations"]
      177 SETTABLEKS                       R17 R16 K18 ["text"]
      179 GETUPVAL                         R17 0
      180 GETTABLEKS                       R17 R17 K25 ["Enums"]
      182 GETTABLEKS                       R17 R17 K26 ["ButtonSize"]
      184 GETTABLEKS                       R17 R17 K27 ["XSmall"]
      186 SETTABLEKS                       R17 R16 K19 ["size"]
      188 GETUPVAL                         R17 0
      189 GETTABLEKS                       R17 R17 K25 ["Enums"]
      191 GETTABLEKS                       R17 R17 K28 ["ButtonVariant"]
      193 GETTABLEKS                       R17 R17 K29 ["Text"]
      195 SETTABLEKS                       R17 R16 K20 ["variant"]
      197 GETUPVAL                         R17 0
      198 GETTABLEKS                       R17 R17 K25 ["Enums"]
      200 GETTABLEKS                       R17 R17 K30 ["FillBehavior"]
      202 GETTABLEKS                       R17 R17 K31 ["Fill"]
      204 SETTABLEKS                       R17 R16 K21 ["fillBehavior"]
      206 MOVE                             R17 R13
      207 CALL                             R17 0 1
      208 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      210 NEWCLOSURE                       R17 P3
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R0
      213 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      215 CALL                             R14 2 1
      216 SETTABLEKS                       R14 R12 K37 ["ManageIntegrationsButton"]
      218 GETTABLEKS                       R14 R0 K38 ["showInternalSettings"]
      220 JUMPIFNOT                        R14 ; [+46]
      221 GETUPVAL                         R14 14
      222 GETUPVAL                         R15 16
      223 DUPTABLE                         R16 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      224 GETTABLEKS                       R17 R11 K39 ["InternalSettings"]
      226 SETTABLEKS                       R17 R16 K18 ["text"]
      228 GETUPVAL                         R17 0
      229 GETTABLEKS                       R17 R17 K25 ["Enums"]
      231 GETTABLEKS                       R17 R17 K26 ["ButtonSize"]
      233 GETTABLEKS                       R17 R17 K27 ["XSmall"]
      235 SETTABLEKS                       R17 R16 K19 ["size"]
      237 GETUPVAL                         R17 0
      238 GETTABLEKS                       R17 R17 K25 ["Enums"]
      240 GETTABLEKS                       R17 R17 K28 ["ButtonVariant"]
      242 GETTABLEKS                       R17 R17 K29 ["Text"]
      244 SETTABLEKS                       R17 R16 K20 ["variant"]
      246 GETUPVAL                         R17 0
      247 GETTABLEKS                       R17 R17 K25 ["Enums"]
      249 GETTABLEKS                       R17 R17 K30 ["FillBehavior"]
      251 GETTABLEKS                       R17 R17 K31 ["Fill"]
      253 SETTABLEKS                       R17 R16 K21 ["fillBehavior"]
      255 MOVE                             R17 R13
      256 CALL                             R17 0 1
      257 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      259 NEWCLOSURE                       R17 P4
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R0
      262 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      264 CALL                             R14 2 1
      265 SETTABLEKS                       R14 R12 K40 ["InternalSettingsButton"]
      267 GETUPVAL                         R14 8
      268 CALL                             R14 0 1
      269 JUMPIF                           R14 ; [+45]
      270 GETUPVAL                         R14 14
      271 GETUPVAL                         R15 16
      272 DUPTABLE                         R16 K42 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      273 GETTABLEKS                       R17 R11 K43 ["ClearConversation"]
      275 SETTABLEKS                       R17 R16 K18 ["text"]
      277 GETUPVAL                         R17 0
      278 GETTABLEKS                       R17 R17 K25 ["Enums"]
      280 GETTABLEKS                       R17 R17 K26 ["ButtonSize"]
      282 GETTABLEKS                       R17 R17 K27 ["XSmall"]
      284 SETTABLEKS                       R17 R16 K19 ["size"]
      286 GETUPVAL                         R17 0
      287 GETTABLEKS                       R17 R17 K25 ["Enums"]
      289 GETTABLEKS                       R17 R17 K28 ["ButtonVariant"]
      291 GETTABLEKS                       R17 R17 K29 ["Text"]
      293 SETTABLEKS                       R17 R16 K20 ["variant"]
      295 GETUPVAL                         R17 0
      296 GETTABLEKS                       R17 R17 K25 ["Enums"]
      298 GETTABLEKS                       R17 R17 K30 ["FillBehavior"]
      300 GETTABLEKS                       R17 R17 K31 ["Fill"]
      302 SETTABLEKS                       R17 R16 K21 ["fillBehavior"]
      304 MOVE                             R17 R13
      305 CALL                             R17 0 1
      306 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      308 SETTABLEKS                       R4 R16 K41 ["isDisabled"]
      310 SETTABLEKS                       R9 R16 K22 ["onActivated"]
      312 CALL                             R14 2 1
      313 SETTABLEKS                       R14 R12 K44 ["ClearConversationButton"]
      315 GETUPVAL                         R14 1
      316 GETTABLEKS                       R14 R14 K45 ["useRef"]
      318 LOADNIL                          R15
      319 CALL                             R14 1 1
      320 GETUPVAL                         R15 1
      321 GETTABLEKS                       R15 R15 K45 ["useRef"]
      323 LOADNIL                          R16
      324 CALL                             R15 1 1
      325 GETUPVAL                         R16 18
      326 CALL                             R16 0 1
      327 JUMPIFNOT                        R16 ; [+13]
      328 GETUPVAL                         R16 1
      329 GETTABLEKS                       R16 R16 K46 ["useEffect"]
      331 NEWCLOSURE                       R17 P5
      332 CAPTURE                          VAL R6
      333 CAPTURE                          VAL R14
      334 CAPTURE                          VAL R7
      335 NEWTABLE                         R18 0 1
      337 MOVE                             R19 R6
      338 SETLIST                          R18 R19 1 [1]
      340 CALL                             R16 2 0
      341 GETUPVAL                         R16 1
      342 GETTABLEKS                       R16 R16 K46 ["useEffect"]
      344 NEWCLOSURE                       R17 P6
      345 CAPTURE                          VAL R15
      346 NEWTABLE                         R18 0 1
      348 GETTABLEKS                       R19 R15 K47 ["current"]
      350 SETLIST                          R18 R19 1 [1]
      352 CALL                             R16 2 0
      353 GETUPVAL                         R16 14
      354 GETUPVAL                         R17 19
      355 GETTABLEKS                       R17 R17 K48 ["Root"]
      357 DUPTABLE                         R18 K50 [{"isOpen"}]
      358 SETTABLEKS                       R6 R18 K49 ["isOpen"]
      360 DUPTABLE                         R19 K53 [{"SettingsAnchor", "Content"}]
      361 GETUPVAL                         R20 14
      362 GETUPVAL                         R21 19
      363 GETTABLEKS                       R21 R21 K54 ["Anchor"]
      365 DUPTABLE                         R22 K56 [{"LayoutOrder", "ref"}]
      366 GETTABLEKS                       R23 R0 K12 ["LayoutOrder"]
      368 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      370 GETUPVAL                         R24 18
      371 CALL                             R24 0 1
      372 JUMPIFNOT                        R24 ; [+2]
      373 MOVE                             R23 R14
      374 JUMP                             ; [+1]
      375 LOADNIL                          R23
      376 SETTABLEKS                       R23 R22 K55 ["ref"]
      378 DUPTABLE                         R23 K58 [{"Button"}]
      379 GETUPVAL                         R24 14
      380 GETUPVAL                         R25 20
      381 DUPTABLE                         R26 K62 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      382 LOADK                            R27 K63 ["icons/actions/overflow"]
      383 SETTABLEKS                       R27 R26 K59 ["icon"]
      385 LOADK                            R27 K64 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      386 SETTABLEKS                       R27 R26 K11 ["tag"]
      388 LOADK                            R27 K65 ["size-400-400 content-emphasis"]
      389 SETTABLEKS                       R27 R26 K60 ["iconTag"]
      391 GETUPVAL                         R27 21
      392 GETTABLEKS                       R27 R27 K66 ["Header"]
      394 GETTABLEKS                       R27 R27 K67 ["SettingsButton"]
      396 SETTABLEKS                       R27 R26 K61 ["testId"]
      398 NEWCLOSURE                       R27 P7
      399 CAPTURE                          UPVAL U18
      400 CAPTURE                          VAL R6
      401 CAPTURE                          VAL R7
      402 CAPTURE                          VAL R14
      403 CAPTURE                          UPVAL U22
      404 SETTABLEKS                       R27 R26 K22 ["onActivated"]
      406 CALL                             R24 2 1
      407 SETTABLEKS                       R24 R23 K57 ["Button"]
      409 CALL                             R20 3 1
      410 SETTABLEKS                       R20 R19 K51 ["SettingsAnchor"]
      412 GETUPVAL                         R20 14
      413 GETUPVAL                         R21 19
      414 GETTABLEKS                       R21 R21 K52 ["Content"]
      416 DUPTABLE                         R22 K72 [{"side", "align", "hasArrow", "onPressedOutside"}]
      417 DUPTABLE                         R23 K75 [{"position", "offset"}]
      418 GETUPVAL                         R24 0
      419 GETTABLEKS                       R24 R24 K25 ["Enums"]
      421 GETTABLEKS                       R24 R24 K76 ["PopoverSide"]
      423 GETTABLEKS                       R24 R24 K77 ["Bottom"]
      425 SETTABLEKS                       R24 R23 K73 ["position"]
      427 GETTABLEKS                       R24 R1 K78 ["Gap"]
      429 GETTABLEKS                       R24 R24 K27 ["XSmall"]
      431 SETTABLEKS                       R24 R23 K74 ["offset"]
      433 SETTABLEKS                       R23 R22 K68 ["side"]
      435 GETUPVAL                         R23 0
      436 GETTABLEKS                       R23 R23 K25 ["Enums"]
      438 GETTABLEKS                       R23 R23 K79 ["PopoverAlign"]
      440 GETTABLEKS                       R23 R23 K80 ["Start"]
      442 SETTABLEKS                       R23 R22 K69 ["align"]
      444 LOADB                            R23 0
      445 SETTABLEKS                       R23 R22 K70 ["hasArrow"]
      447 NEWCLOSURE                       R23 P8
      448 CAPTURE                          VAL R7
      449 SETTABLEKS                       R23 R22 K71 ["onPressedOutside"]
      451 DUPTABLE                         R23 K82 [{"SettingsContent"}]
      452 GETUPVAL                         R24 14
      453 GETUPVAL                         R25 15
      454 DUPTABLE                         R26 K84 [{"tag", "ref", "testId", "sizeConstraint"}]
      455 LOADK                            R27 K85 ["col auto-xy radius-medium padding-small bg-surface-100 gap-small align-x-left"]
      456 SETTABLEKS                       R27 R26 K11 ["tag"]
      458 SETTABLEKS                       R15 R26 K55 ["ref"]
      460 GETUPVAL                         R27 21
      461 GETTABLEKS                       R27 R27 K66 ["Header"]
      463 GETTABLEKS                       R27 R27 K81 ["SettingsContent"]
      465 SETTABLEKS                       R27 R26 K61 ["testId"]
      467 DUPTABLE                         R27 K87 [{"MinSize"}]
      468 GETIMPORT                        R28 K90 [Vector2.new]
      470 LOADN                            R29 150
      471 LOADN                            R30 0
      472 CALL                             R28 2 1
      473 SETTABLEKS                       R28 R27 K86 ["MinSize"]
      475 SETTABLEKS                       R27 R26 K83 ["sizeConstraint"]
      477 MOVE                             R27 R12
      478 CALL                             R24 3 1
      479 SETTABLEKS                       R24 R23 K81 ["SettingsContent"]
      481 CALL                             R20 3 1
      482 SETTABLEKS                       R20 R19 K52 ["Content"]
      484 CALL                             R16 3 -1
      485 RETURN                           R16 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["get"]
       11 CALL                             R0 0 1
       12 GETTABLEKS                       R0 R0 K1 ["printToStudioLogAsync"]
       14 LOADK                            R1 K2 ["AssistantVersion: v26504"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R3 R2 K1 ["showIntegrations"]
       16 GETTABLEKS                       R4 R2 K2 ["showApiKeys"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 7
       29 GETUPVAL                         R7 8
       30 DUPTABLE                         R8 K6 [{"tag", "LayoutOrder"}]
       31 NEWTABLE                         R9 4 0
       33 LOADB                            R10 1
       34 SETTABLEKS                       R10 R9 K7 ["row size-full-0 auto-y padding-small gap-xsmall"]
       36 GETUPVAL                         R11 9
       37 CALL                             R11 0 1
       38 NOT                              R10 R11
       39 SETTABLEKS                       R10 R9 K8 ["align-x-right"]
       41 GETUPVAL                         R10 9
       42 CALL                             R10 0 1
       43 JUMPIF                           R10 ; [+2]
       44 GETUPVAL                         R10 10
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K9 ["align-y-center"]
       48 SETTABLEKS                       R9 R8 K4 ["tag"]
       50 GETTABLEKS                       R9 R0 K5 ["LayoutOrder"]
       52 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       54 DUPTABLE                         R9 K15 [{"FillArea", "Version", "Expand", "Settings", "DialogWidget"}]
       55 GETUPVAL                         R11 9
       56 CALL                             R11 0 1
       57 JUMPIFNOT                        R11 ; [+23]
       58 GETUPVAL                         R10 7
       59 GETUPVAL                         R11 8
       60 DUPTABLE                         R12 K6 [{"tag", "LayoutOrder"}]
       61 LOADK                            R13 K16 ["fill align-x-left align-y-center"]
       62 SETTABLEKS                       R13 R12 K4 ["tag"]
       64 MOVE                             R13 R1
       65 CALL                             R13 0 1
       66 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       68 DUPTABLE                         R13 K18 [{"ToggleThreadsMenuButton"}]
       69 GETUPVAL                         R14 7
       70 GETUPVAL                         R15 11
       71 DUPTABLE                         R16 K19 [{"LayoutOrder"}]
       72 MOVE                             R17 R1
       73 CALL                             R17 0 1
       74 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K17 ["ToggleThreadsMenuButton"]
       79 CALL                             R10 3 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R10
       82 SETTABLEKS                       R10 R9 K10 ["FillArea"]
       84 GETUPVAL                         R11 10
       85 CALL                             R11 0 1
       86 JUMPIFNOT                        R11 ; [+15]
       87 GETUPVAL                         R10 7
       88 GETUPVAL                         R11 12
       89 DUPTABLE                         R12 K21 [{"tag", "Text", "LayoutOrder"}]
       90 LOADK                            R13 K22 ["auto-xy text-caption-small content-muted"]
       91 SETTABLEKS                       R13 R12 K4 ["tag"]
       93 LOADK                            R13 K23 ["v26504"]
       94 SETTABLEKS                       R13 R12 K20 ["Text"]
       96 MOVE                             R13 R1
       97 CALL                             R13 0 1
       98 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      100 CALL                             R10 2 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R10
      103 SETTABLEKS                       R10 R9 K11 ["Version"]
      105 GETUPVAL                         R10 7
      106 GETUPVAL                         R11 13
      107 DUPTABLE                         R12 K19 [{"LayoutOrder"}]
      108 MOVE                             R13 R1
      109 CALL                             R13 0 1
      110 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      112 CALL                             R10 2 1
      113 SETTABLEKS                       R10 R9 K12 ["Expand"]
      115 GETUPVAL                         R10 7
      116 GETUPVAL                         R11 14
      117 DUPTABLE                         R12 K25 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings"}]
      118 MOVE                             R13 R1
      119 CALL                             R13 0 1
      120 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      122 SETTABLEKS                       R3 R12 K1 ["showIntegrations"]
      124 SETTABLEKS                       R4 R12 K2 ["showApiKeys"]
      126 SETTABLEKS                       R5 R12 K24 ["showInternalSettings"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K13 ["Settings"]
      131 GETTABLEKS                       R10 R2 K26 ["root"]
      133 SETTABLEKS                       R10 R9 K14 ["DialogWidget"]
      135 CALL                             R6 3 -1
      136 RETURN                           R6 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["LLMProviderSelectionContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K17 ["ThreadsWindow"]
       66 GETTABLEKS                       R9 R9 K18 ["ToggleThreadsMenuButton"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["Resources"]
       73 GETTABLEKS                       R10 R10 K20 ["Localization"]
       75 GETTABLEKS                       R10 R10 K21 ["Translator"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K22 ["Types"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K24 ["useClearConversation"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K25 ["useEditContent"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K26 ["useGetThread"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K27 ["useSettingsDialog"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K28 ["Guest"]
      115 GETTABLEKS                       R16 R16 K29 ["Environment"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K30 ["Flags"]
      122 GETTABLEKS                       R17 R17 K31 ["FFlagAssistantMultiEditExternalClient"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K30 ["Flags"]
      129 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantMultipleChatPersistence"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K30 ["Flags"]
      136 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantPrivilegedCodeExecution"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K30 ["Flags"]
      143 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantShowVersion"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K30 ["Flags"]
      150 GETTABLEKS                       R21 R21 K35 ["FFlagExternalMCPUI"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K30 ["Flags"]
      157 GETTABLEKS                       R22 R22 K36 ["FFlagHidePopoverWhenParentWidgetTooSmall"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K30 ["Flags"]
      164 GETTABLEKS                       R23 R23 K37 ["FFlagMCPAssistantManagementMenu"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K30 ["Flags"]
      171 GETTABLEKS                       R24 R24 K38 ["FFlagPrimGenEnableStatusLog"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R25 R0 K30 ["Flags"]
      178 GETTABLEKS                       R25 R25 K39 ["FIntAssistantMinPopoverHeight"]
      180 CALL                             R24 1 1
      181 GETTABLEKS                       R25 R2 K40 ["Button"]
      183 GETTABLEKS                       R26 R2 K41 ["Popover"]
      185 GETTABLEKS                       R27 R2 K42 ["Text"]
      187 GETTABLEKS                       R28 R2 K43 ["View"]
      189 GETTABLEKS                       R29 R6 K44 ["createNextOrder"]
      191 GETTABLEKS                       R30 R5 K45 ["createElement"]
      193 GETTABLEKS                       R31 R3 K46 ["InputDisabledReasons"]
      195 GETTABLEKS                       R32 R10 K47 ["DEFAULT_STUDIO_MODEL"]
      197 DUPCLOSURE                       R33 K48 [PROTO_0]
      198 CAPTURE                          VAL R24
      199 LOADB                            R34 0
      200 DUPTABLE                         R35 K51 [{"Dark", "Light"}]
      201 LOADK                            R36 K52 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      202 SETTABLEKS                       R36 R35 K49 ["Dark"]
      204 LOADK                            R36 K53 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      205 SETTABLEKS                       R36 R35 K50 ["Light"]
      207 DUPCLOSURE                       R36 K54 [PROTO_4]
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R35
      216 DUPCLOSURE                       R37 K55 [PROTO_16]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R31
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R29
      231 CAPTURE                          VAL R30
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R21
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R1
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R24
      240 NEWCLOSURE                       R38 P3
      241 CAPTURE                          VAL R29
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R5
      244 CAPTURE                          REF R34
      245 CAPTURE                          VAL R23
      246 CAPTURE                          VAL R15
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R30
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R19
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R27
      254 CAPTURE                          VAL R36
      255 CAPTURE                          VAL R37
      256 CLOSEUPVALS                      R34
      257 RETURN                           R38 1
