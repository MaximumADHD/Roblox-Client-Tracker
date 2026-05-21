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
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 DUPTABLE                         R0 K5 [{"ClearConversation", "RemoveCurrentChat", "ManageIntegrations", "EditApiKeys", "InternalSettings"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["Settings"]
        3 LOADK                            R4 K0 ["ClearConversation"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ClearConversation"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["Settings"]
       11 LOADK                            R4 K1 ["RemoveCurrentChat"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["RemoveCurrentChat"]
       17 GETUPVAL                         R2 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K8 ["IntegrationManagement"]
       21 LOADK                            R4 K2 ["ManageIntegrations"]
       22 NAMECALL                         R1 R1 K7 ["getText"]
       24 CALL                             R1 3 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K2 ["ManageIntegrations"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K9 ["SettingsDialog"]
       31 LOADK                            R4 K3 ["EditApiKeys"]
       32 NAMECALL                         R1 R1 K7 ["getText"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K3 ["EditApiKeys"]
       37 GETUPVAL                         R2 2
       38 CALL                             R2 0 1
       39 JUMPIFNOT                        R2 ; [+7]
       40 GETUPVAL                         R1 0
       41 LOADK                            R3 K10 ["InternalFeatures"]
       42 LOADK                            R4 K11 ["Title"]
       43 NAMECALL                         R1 R1 K7 ["getText"]
       45 CALL                             R1 3 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K4 ["InternalSettings"]
       50 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showApiKeys"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["showIntegrations"]
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
       47 LOADNIL                          R10
       48 LOADB                            R11 0
       49 GETUPVAL                         R12 8
       50 CALL                             R12 0 1
       51 JUMPIFNOT                        R12 ; [+30]
       52 GETUPVAL                         R12 9
       53 CALL                             R12 0 1
       54 JUMPIFNOT                        R12 ; [+3]
       55 GETTABLEKS                       R13 R12 K7 ["threadId"]
       57 JUMPIF                           R13 ; [+1]
       58 LOADNIL                          R13
       59 JUMPIFNOT                        R12 ; [+3]
       60 GETTABLEKS                       R14 R12 K8 ["ephemeral"]
       62 JUMPIF                           R14 ; [+1]
       63 LOADB                            R14 0
       64 MOVE                             R11 R14
       65 GETUPVAL                         R14 10
       66 CALL                             R14 0 1
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R15 R15 K9 ["useCallback"]
       70 NEWCLOSURE                       R16 P0
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R14
       73 NEWTABLE                         R17 0 2
       75 MOVE                             R18 R14
       76 MOVE                             R19 R13
       77 SETLIST                          R17 R18 2 [1]
       79 CALL                             R15 2 1
       80 MOVE                             R10 R15
       81 JUMP                             ; [+3]
       82 GETUPVAL                         R12 11
       83 CALL                             R12 0 1
       84 MOVE                             R9 R12
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R12 R12 K10 ["useMemo"]
       88 NEWCLOSURE                       R13 P1
       89 CAPTURE                          VAL R8
       90 CAPTURE                          UPVAL U12
       91 CAPTURE                          UPVAL U13
       92 NEWTABLE                         R14 0 2
       94 GETTABLEKS                       R15 R8 K11 ["selectedModel"]
       96 GETUPVAL                         R16 13
       97 GETTABLEKS                       R16 R16 K12 ["locale"]
       99 SETLIST                          R14 R15 2 [1]
      101 CALL                             R12 2 1
      102 GETUPVAL                         R13 1
      103 GETTABLEKS                       R13 R13 K10 ["useMemo"]
      105 NEWCLOSURE                       R14 P2
      106 CAPTURE                          UPVAL U13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U14
      109 NEWTABLE                         R15 0 2
      111 GETUPVAL                         R16 13
      112 GETTABLEKS                       R16 R16 K12 ["locale"]
      114 MOVE                             R17 R5
      115 SETLIST                          R15 R16 2 [1]
      117 CALL                             R13 2 1
      118 NEWTABLE                         R14 0 0
      120 GETUPVAL                         R15 15
      121 CALL                             R15 0 1
      122 GETTABLEKS                       R16 R0 K13 ["showApiKeys"]
      124 JUMPIFNOT                        R16 ; [+75]
      125 GETUPVAL                         R16 16
      126 GETUPVAL                         R17 17
      127 DUPTABLE                         R18 K16 [{"tag", "LayoutOrder"}]
      128 LOADK                            R19 K17 ["col auto-xy gap-xxsmall"]
      129 SETTABLEKS                       R19 R18 K14 ["tag"]
      131 MOVE                             R19 R15
      132 CALL                             R19 0 1
      133 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      135 DUPTABLE                         R19 K20 [{"EditApiKeysButton", "CurrentModelText"}]
      136 GETUPVAL                         R20 16
      137 GETUPVAL                         R21 18
      138 DUPTABLE                         R22 K26 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      139 GETTABLEKS                       R23 R13 K27 ["EditApiKeys"]
      141 SETTABLEKS                       R23 R22 K21 ["text"]
      143 GETUPVAL                         R23 0
      144 GETTABLEKS                       R23 R23 K28 ["Enums"]
      146 GETTABLEKS                       R23 R23 K29 ["ButtonSize"]
      148 GETTABLEKS                       R23 R23 K30 ["XSmall"]
      150 SETTABLEKS                       R23 R22 K22 ["size"]
      152 GETUPVAL                         R23 0
      153 GETTABLEKS                       R23 R23 K28 ["Enums"]
      155 GETTABLEKS                       R23 R23 K31 ["ButtonVariant"]
      157 GETTABLEKS                       R23 R23 K32 ["Text"]
      159 SETTABLEKS                       R23 R22 K23 ["variant"]
      161 GETUPVAL                         R23 0
      162 GETTABLEKS                       R23 R23 K28 ["Enums"]
      164 GETTABLEKS                       R23 R23 K33 ["FillBehavior"]
      166 GETTABLEKS                       R23 R23 K34 ["Fill"]
      168 SETTABLEKS                       R23 R22 K24 ["fillBehavior"]
      170 MOVE                             R23 R15
      171 CALL                             R23 0 1
      172 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      174 NEWCLOSURE                       R23 P3
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R0
      177 SETTABLEKS                       R23 R22 K25 ["onActivated"]
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K18 ["EditApiKeysButton"]
      182 GETUPVAL                         R20 16
      183 GETUPVAL                         R21 19
      184 DUPTABLE                         R22 K35 [{"tag", "Text", "LayoutOrder"}]
      185 LOADK                            R23 K36 ["auto-xy text-caption-medium text-wrap text-align-x-left padding-left-small"]
      186 SETTABLEKS                       R23 R22 K14 ["tag"]
      188 SETTABLEKS                       R12 R22 K32 ["Text"]
      190 MOVE                             R23 R15
      191 CALL                             R23 0 1
      192 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      194 CALL                             R20 2 1
      195 SETTABLEKS                       R20 R19 K19 ["CurrentModelText"]
      197 CALL                             R16 3 1
      198 SETTABLEKS                       R16 R14 K37 ["EditApiKeysGroup"]
      200 JUMPIFNOT                        R5 ; [+49]
      201 GETTABLEKS                       R16 R0 K38 ["showIntegrations"]
      203 JUMPIFNOT                        R16 ; [+46]
      204 GETUPVAL                         R16 16
      205 GETUPVAL                         R17 18
      206 DUPTABLE                         R18 K26 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      207 GETTABLEKS                       R19 R13 K39 ["ManageIntegrations"]
      209 SETTABLEKS                       R19 R18 K21 ["text"]
      211 GETUPVAL                         R19 0
      212 GETTABLEKS                       R19 R19 K28 ["Enums"]
      214 GETTABLEKS                       R19 R19 K29 ["ButtonSize"]
      216 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      218 SETTABLEKS                       R19 R18 K22 ["size"]
      220 GETUPVAL                         R19 0
      221 GETTABLEKS                       R19 R19 K28 ["Enums"]
      223 GETTABLEKS                       R19 R19 K31 ["ButtonVariant"]
      225 GETTABLEKS                       R19 R19 K32 ["Text"]
      227 SETTABLEKS                       R19 R18 K23 ["variant"]
      229 GETUPVAL                         R19 0
      230 GETTABLEKS                       R19 R19 K28 ["Enums"]
      232 GETTABLEKS                       R19 R19 K33 ["FillBehavior"]
      234 GETTABLEKS                       R19 R19 K34 ["Fill"]
      236 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      238 MOVE                             R19 R15
      239 CALL                             R19 0 1
      240 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      242 NEWCLOSURE                       R19 P4
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R0
      245 SETTABLEKS                       R19 R18 K25 ["onActivated"]
      247 CALL                             R16 2 1
      248 SETTABLEKS                       R16 R14 K40 ["ManageIntegrationsButton"]
      250 GETTABLEKS                       R16 R0 K41 ["showInternalSettings"]
      252 JUMPIFNOT                        R16 ; [+46]
      253 GETUPVAL                         R16 16
      254 GETUPVAL                         R17 18
      255 DUPTABLE                         R18 K26 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      256 GETTABLEKS                       R19 R13 K42 ["InternalSettings"]
      258 SETTABLEKS                       R19 R18 K21 ["text"]
      260 GETUPVAL                         R19 0
      261 GETTABLEKS                       R19 R19 K28 ["Enums"]
      263 GETTABLEKS                       R19 R19 K29 ["ButtonSize"]
      265 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      267 SETTABLEKS                       R19 R18 K22 ["size"]
      269 GETUPVAL                         R19 0
      270 GETTABLEKS                       R19 R19 K28 ["Enums"]
      272 GETTABLEKS                       R19 R19 K31 ["ButtonVariant"]
      274 GETTABLEKS                       R19 R19 K32 ["Text"]
      276 SETTABLEKS                       R19 R18 K23 ["variant"]
      278 GETUPVAL                         R19 0
      279 GETTABLEKS                       R19 R19 K28 ["Enums"]
      281 GETTABLEKS                       R19 R19 K33 ["FillBehavior"]
      283 GETTABLEKS                       R19 R19 K34 ["Fill"]
      285 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      287 MOVE                             R19 R15
      288 CALL                             R19 0 1
      289 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      291 NEWCLOSURE                       R19 P5
      292 CAPTURE                          VAL R7
      293 CAPTURE                          VAL R0
      294 SETTABLEKS                       R19 R18 K25 ["onActivated"]
      296 CALL                             R16 2 1
      297 SETTABLEKS                       R16 R14 K43 ["InternalSettingsButton"]
      299 GETUPVAL                         R16 8
      300 CALL                             R16 0 1
      301 JUMPIFNOT                        R16 ; [+47]
      302 GETUPVAL                         R16 16
      303 GETUPVAL                         R17 18
      304 DUPTABLE                         R18 K45 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      305 GETTABLEKS                       R19 R13 K46 ["RemoveCurrentChat"]
      307 SETTABLEKS                       R19 R18 K21 ["text"]
      309 GETUPVAL                         R19 0
      310 GETTABLEKS                       R19 R19 K28 ["Enums"]
      312 GETTABLEKS                       R19 R19 K29 ["ButtonSize"]
      314 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      316 SETTABLEKS                       R19 R18 K22 ["size"]
      318 GETUPVAL                         R19 0
      319 GETTABLEKS                       R19 R19 K28 ["Enums"]
      321 GETTABLEKS                       R19 R19 K31 ["ButtonVariant"]
      323 GETTABLEKS                       R19 R19 K32 ["Text"]
      325 SETTABLEKS                       R19 R18 K23 ["variant"]
      327 GETUPVAL                         R19 0
      328 GETTABLEKS                       R19 R19 K28 ["Enums"]
      330 GETTABLEKS                       R19 R19 K33 ["FillBehavior"]
      332 GETTABLEKS                       R19 R19 K34 ["Fill"]
      334 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      336 MOVE                             R19 R15
      337 CALL                             R19 0 1
      338 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      340 OR                               R19 R4 R11
      341 SETTABLEKS                       R19 R18 K44 ["isDisabled"]
      343 SETTABLEKS                       R10 R18 K25 ["onActivated"]
      345 CALL                             R16 2 1
      346 SETTABLEKS                       R16 R14 K47 ["RemoveCurrentThreadButton"]
      348 JUMP                             ; [+45]
      349 GETUPVAL                         R16 16
      350 GETUPVAL                         R17 18
      351 DUPTABLE                         R18 K45 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      352 GETTABLEKS                       R19 R13 K48 ["ClearConversation"]
      354 SETTABLEKS                       R19 R18 K21 ["text"]
      356 GETUPVAL                         R19 0
      357 GETTABLEKS                       R19 R19 K28 ["Enums"]
      359 GETTABLEKS                       R19 R19 K29 ["ButtonSize"]
      361 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      363 SETTABLEKS                       R19 R18 K22 ["size"]
      365 GETUPVAL                         R19 0
      366 GETTABLEKS                       R19 R19 K28 ["Enums"]
      368 GETTABLEKS                       R19 R19 K31 ["ButtonVariant"]
      370 GETTABLEKS                       R19 R19 K32 ["Text"]
      372 SETTABLEKS                       R19 R18 K23 ["variant"]
      374 GETUPVAL                         R19 0
      375 GETTABLEKS                       R19 R19 K28 ["Enums"]
      377 GETTABLEKS                       R19 R19 K33 ["FillBehavior"]
      379 GETTABLEKS                       R19 R19 K34 ["Fill"]
      381 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      383 MOVE                             R19 R15
      384 CALL                             R19 0 1
      385 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      387 SETTABLEKS                       R4 R18 K44 ["isDisabled"]
      389 SETTABLEKS                       R9 R18 K25 ["onActivated"]
      391 CALL                             R16 2 1
      392 SETTABLEKS                       R16 R14 K49 ["ClearConversationButton"]
      394 GETUPVAL                         R16 1
      395 GETTABLEKS                       R16 R16 K50 ["useRef"]
      397 LOADNIL                          R17
      398 CALL                             R16 1 1
      399 GETUPVAL                         R17 1
      400 GETTABLEKS                       R17 R17 K50 ["useRef"]
      402 LOADNIL                          R18
      403 CALL                             R17 1 1
      404 GETUPVAL                         R18 20
      405 CALL                             R18 0 1
      406 JUMPIFNOT                        R18 ; [+13]
      407 GETUPVAL                         R18 1
      408 GETTABLEKS                       R18 R18 K51 ["useEffect"]
      410 NEWCLOSURE                       R19 P6
      411 CAPTURE                          VAL R6
      412 CAPTURE                          VAL R16
      413 CAPTURE                          VAL R7
      414 NEWTABLE                         R20 0 1
      416 MOVE                             R21 R6
      417 SETLIST                          R20 R21 1 [1]
      419 CALL                             R18 2 0
      420 GETUPVAL                         R18 1
      421 GETTABLEKS                       R18 R18 K51 ["useEffect"]
      423 NEWCLOSURE                       R19 P7
      424 CAPTURE                          VAL R17
      425 NEWTABLE                         R20 0 1
      427 GETTABLEKS                       R21 R17 K52 ["current"]
      429 SETLIST                          R20 R21 1 [1]
      431 CALL                             R18 2 0
      432 GETUPVAL                         R18 16
      433 GETUPVAL                         R19 21
      434 GETTABLEKS                       R19 R19 K53 ["Root"]
      436 DUPTABLE                         R20 K55 [{"isOpen"}]
      437 SETTABLEKS                       R6 R20 K54 ["isOpen"]
      439 DUPTABLE                         R21 K58 [{"SettingsAnchor", "Content"}]
      440 GETUPVAL                         R22 16
      441 GETUPVAL                         R23 21
      442 GETTABLEKS                       R23 R23 K59 ["Anchor"]
      444 DUPTABLE                         R24 K61 [{"LayoutOrder", "ref"}]
      445 GETTABLEKS                       R25 R0 K15 ["LayoutOrder"]
      447 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      449 GETUPVAL                         R26 20
      450 CALL                             R26 0 1
      451 JUMPIFNOT                        R26 ; [+2]
      452 MOVE                             R25 R16
      453 JUMP                             ; [+1]
      454 LOADNIL                          R25
      455 SETTABLEKS                       R25 R24 K60 ["ref"]
      457 DUPTABLE                         R25 K63 [{"Button"}]
      458 GETUPVAL                         R26 16
      459 GETUPVAL                         R27 22
      460 DUPTABLE                         R28 K67 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      461 LOADK                            R29 K68 ["icons/actions/overflow"]
      462 SETTABLEKS                       R29 R28 K64 ["icon"]
      464 LOADK                            R29 K69 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      465 SETTABLEKS                       R29 R28 K14 ["tag"]
      467 LOADK                            R29 K70 ["size-400-400 content-emphasis"]
      468 SETTABLEKS                       R29 R28 K65 ["iconTag"]
      470 GETUPVAL                         R29 23
      471 GETTABLEKS                       R29 R29 K71 ["Header"]
      473 GETTABLEKS                       R29 R29 K72 ["SettingsButton"]
      475 SETTABLEKS                       R29 R28 K66 ["testId"]
      477 NEWCLOSURE                       R29 P8
      478 CAPTURE                          UPVAL U20
      479 CAPTURE                          VAL R6
      480 CAPTURE                          VAL R7
      481 CAPTURE                          VAL R16
      482 CAPTURE                          UPVAL U24
      483 SETTABLEKS                       R29 R28 K25 ["onActivated"]
      485 CALL                             R26 2 1
      486 SETTABLEKS                       R26 R25 K62 ["Button"]
      488 CALL                             R22 3 1
      489 SETTABLEKS                       R22 R21 K56 ["SettingsAnchor"]
      491 GETUPVAL                         R22 16
      492 GETUPVAL                         R23 21
      493 GETTABLEKS                       R23 R23 K57 ["Content"]
      495 DUPTABLE                         R24 K77 [{"side", "align", "hasArrow", "onPressedOutside"}]
      496 DUPTABLE                         R25 K80 [{"position", "offset"}]
      497 GETUPVAL                         R26 0
      498 GETTABLEKS                       R26 R26 K28 ["Enums"]
      500 GETTABLEKS                       R26 R26 K81 ["PopoverSide"]
      502 GETTABLEKS                       R26 R26 K82 ["Bottom"]
      504 SETTABLEKS                       R26 R25 K78 ["position"]
      506 GETTABLEKS                       R26 R1 K83 ["Gap"]
      508 GETTABLEKS                       R26 R26 K30 ["XSmall"]
      510 SETTABLEKS                       R26 R25 K79 ["offset"]
      512 SETTABLEKS                       R25 R24 K73 ["side"]
      514 GETUPVAL                         R25 0
      515 GETTABLEKS                       R25 R25 K28 ["Enums"]
      517 GETTABLEKS                       R25 R25 K84 ["PopoverAlign"]
      519 GETTABLEKS                       R25 R25 K85 ["Start"]
      521 SETTABLEKS                       R25 R24 K74 ["align"]
      523 LOADB                            R25 0
      524 SETTABLEKS                       R25 R24 K75 ["hasArrow"]
      526 NEWCLOSURE                       R25 P9
      527 CAPTURE                          VAL R7
      528 SETTABLEKS                       R25 R24 K76 ["onPressedOutside"]
      530 DUPTABLE                         R25 K87 [{"SettingsContent"}]
      531 GETUPVAL                         R26 16
      532 GETUPVAL                         R27 17
      533 DUPTABLE                         R28 K89 [{"tag", "ref", "testId", "sizeConstraint"}]
      534 LOADK                            R29 K90 ["col auto-xy radius-medium padding-small bg-surface-100 gap-small align-x-left"]
      535 SETTABLEKS                       R29 R28 K14 ["tag"]
      537 SETTABLEKS                       R17 R28 K60 ["ref"]
      539 GETUPVAL                         R29 23
      540 GETTABLEKS                       R29 R29 K71 ["Header"]
      542 GETTABLEKS                       R29 R29 K86 ["SettingsContent"]
      544 SETTABLEKS                       R29 R28 K66 ["testId"]
      546 DUPTABLE                         R29 K92 [{"MinSize"}]
      547 GETIMPORT                        R30 K95 [Vector2.new]
      549 LOADN                            R31 150
      550 LOADN                            R32 0
      551 CALL                             R30 2 1
      552 SETTABLEKS                       R30 R29 K91 ["MinSize"]
      554 SETTABLEKS                       R29 R28 K88 ["sizeConstraint"]
      556 MOVE                             R29 R14
      557 CALL                             R26 3 1
      558 SETTABLEKS                       R26 R25 K86 ["SettingsContent"]
      560 CALL                             R22 3 1
      561 SETTABLEKS                       R22 R21 K57 ["Content"]
      563 CALL                             R18 3 -1
      564 RETURN                           R18 -1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
       94 GETTABLEKS                       R13 R13 K25 ["useCurrentThread"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K26 ["useEditContent"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K27 ["useGetThread"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K28 ["useRemoveThread"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K23 ["Hooks"]
      122 GETTABLEKS                       R17 R17 K29 ["useSettingsDialog"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K30 ["Guest"]
      129 GETTABLEKS                       R18 R18 K31 ["Environment"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K32 ["Flags"]
      136 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantMultiEditExternalClient"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K32 ["Flags"]
      143 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantMultipleChatPersistence"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K32 ["Flags"]
      150 GETTABLEKS                       R21 R21 K35 ["FFlagAssistantPrivilegedCodeExecution"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K32 ["Flags"]
      157 GETTABLEKS                       R22 R22 K36 ["FFlagAssistantShowVersion"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K32 ["Flags"]
      164 GETTABLEKS                       R23 R23 K37 ["FFlagExternalMCPUI"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K32 ["Flags"]
      171 GETTABLEKS                       R24 R24 K38 ["FFlagHidePopoverWhenParentWidgetTooSmall"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R25 R0 K32 ["Flags"]
      178 GETTABLEKS                       R25 R25 K39 ["FFlagMCPAssistantManagementMenu"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R26 R0 K32 ["Flags"]
      185 GETTABLEKS                       R26 R26 K40 ["FFlagPrimGenEnableStatusLog"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETTABLEKS                       R27 R0 K32 ["Flags"]
      192 GETTABLEKS                       R27 R27 K41 ["FIntAssistantMinPopoverHeight"]
      194 CALL                             R26 1 1
      195 GETTABLEKS                       R27 R2 K42 ["Button"]
      197 GETTABLEKS                       R28 R2 K43 ["Popover"]
      199 GETTABLEKS                       R29 R2 K44 ["Text"]
      201 GETTABLEKS                       R30 R2 K45 ["View"]
      203 GETTABLEKS                       R31 R6 K46 ["createNextOrder"]
      205 GETTABLEKS                       R32 R5 K47 ["createElement"]
      207 GETTABLEKS                       R33 R3 K48 ["InputDisabledReasons"]
      209 GETTABLEKS                       R34 R10 K49 ["DEFAULT_STUDIO_MODEL"]
      211 DUPCLOSURE                       R35 K50 [PROTO_0]
      212 CAPTURE                          VAL R26
      213 LOADB                            R36 0
      214 DUPTABLE                         R37 K53 [{"Dark", "Light"}]
      215 LOADK                            R38 K54 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      216 SETTABLEKS                       R38 R37 K51 ["Dark"]
      218 LOADK                            R38 K55 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      219 SETTABLEKS                       R38 R37 K52 ["Light"]
      221 DUPCLOSURE                       R38 K56 [PROTO_4]
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R37
      230 DUPCLOSURE                       R39 K57 [PROTO_17]
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R33
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R34
      244 CAPTURE                          VAL R9
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R30
      249 CAPTURE                          VAL R27
      250 CAPTURE                          VAL R29
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R26
      256 NEWCLOSURE                       R40 P3
      257 CAPTURE                          VAL R31
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R5
      260 CAPTURE                          REF R36
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R17
      263 CAPTURE                          VAL R20
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R30
      266 CAPTURE                          VAL R19
      267 CAPTURE                          VAL R21
      268 CAPTURE                          VAL R8
      269 CAPTURE                          VAL R29
      270 CAPTURE                          VAL R38
      271 CAPTURE                          VAL R39
      272 CLOSEUPVALS                      R36
      273 RETURN                           R40 1
