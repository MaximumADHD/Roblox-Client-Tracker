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
       58 CAPTURE                          UPVAL U0
       59 SETTABLEKS                       R17 R16 K5 ["transformFn"]
       61 CALL                             R15 1 0
       62 FORGLOOP                         R10 2 ; [-21]
       64 FORGLOOP                         R5 2 ; [-28]
       66 RETURN                           R0 0

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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showApiKeys"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showIntegrations"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showInternalSettings"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["current"]
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
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K0 ["current"]
       12 JUMPIFNOT                        R0 ; [+18]
       13 LOADK                            R3 K1 ["LayerCollector"]
       14 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       20 GETTABLEKS                       R2 R3 K4 ["Y"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["useContext"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K4 ["reasonDisabled"]
       15 MOVE                             R4 R3
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETTABLEKS                       R5 R3 K4 ["reasonDisabled"]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R6 R7 K5 ["Generation"]
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
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K6 ["useState"]
       37 LOADB                            R7 0
       38 CALL                             R6 1 2
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K2 ["useContext"]
       42 GETUPVAL                         R10 7
       43 GETTABLEKS                       R9 R10 K3 ["Context"]
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
       67 GETUPVAL                         R16 1
       68 GETTABLEKS                       R15 R16 K9 ["useCallback"]
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
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R12 R13 K10 ["useMemo"]
       88 NEWCLOSURE                       R13 P1
       89 CAPTURE                          VAL R8
       90 CAPTURE                          UPVAL U12
       91 CAPTURE                          UPVAL U13
       92 NEWTABLE                         R14 0 2
       94 GETTABLEKS                       R15 R8 K11 ["selectedModel"]
       96 GETUPVAL                         R17 13
       97 GETTABLEKS                       R16 R17 K12 ["locale"]
       99 SETLIST                          R14 R15 2 [1]
      101 CALL                             R12 2 1
      102 GETUPVAL                         R14 1
      103 GETTABLEKS                       R13 R14 K10 ["useMemo"]
      105 NEWCLOSURE                       R14 P2
      106 CAPTURE                          UPVAL U13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U14
      109 NEWTABLE                         R15 0 2
      111 GETUPVAL                         R17 13
      112 GETTABLEKS                       R16 R17 K12 ["locale"]
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
      143 GETUPVAL                         R26 0
      144 GETTABLEKS                       R25 R26 K28 ["Enums"]
      146 GETTABLEKS                       R24 R25 K29 ["ButtonSize"]
      148 GETTABLEKS                       R23 R24 K30 ["XSmall"]
      150 SETTABLEKS                       R23 R22 K22 ["size"]
      152 GETUPVAL                         R26 0
      153 GETTABLEKS                       R25 R26 K28 ["Enums"]
      155 GETTABLEKS                       R24 R25 K31 ["ButtonVariant"]
      157 GETTABLEKS                       R23 R24 K32 ["Text"]
      159 SETTABLEKS                       R23 R22 K23 ["variant"]
      161 GETUPVAL                         R26 0
      162 GETTABLEKS                       R25 R26 K28 ["Enums"]
      164 GETTABLEKS                       R24 R25 K33 ["FillBehavior"]
      166 GETTABLEKS                       R23 R24 K34 ["Fill"]
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
      211 GETUPVAL                         R22 0
      212 GETTABLEKS                       R21 R22 K28 ["Enums"]
      214 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      216 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      218 SETTABLEKS                       R19 R18 K22 ["size"]
      220 GETUPVAL                         R22 0
      221 GETTABLEKS                       R21 R22 K28 ["Enums"]
      223 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      225 GETTABLEKS                       R19 R20 K32 ["Text"]
      227 SETTABLEKS                       R19 R18 K23 ["variant"]
      229 GETUPVAL                         R22 0
      230 GETTABLEKS                       R21 R22 K28 ["Enums"]
      232 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      234 GETTABLEKS                       R19 R20 K34 ["Fill"]
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
      260 GETUPVAL                         R22 0
      261 GETTABLEKS                       R21 R22 K28 ["Enums"]
      263 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      265 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      267 SETTABLEKS                       R19 R18 K22 ["size"]
      269 GETUPVAL                         R22 0
      270 GETTABLEKS                       R21 R22 K28 ["Enums"]
      272 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      274 GETTABLEKS                       R19 R20 K32 ["Text"]
      276 SETTABLEKS                       R19 R18 K23 ["variant"]
      278 GETUPVAL                         R22 0
      279 GETTABLEKS                       R21 R22 K28 ["Enums"]
      281 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      283 GETTABLEKS                       R19 R20 K34 ["Fill"]
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
      309 GETUPVAL                         R22 0
      310 GETTABLEKS                       R21 R22 K28 ["Enums"]
      312 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      314 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      316 SETTABLEKS                       R19 R18 K22 ["size"]
      318 GETUPVAL                         R22 0
      319 GETTABLEKS                       R21 R22 K28 ["Enums"]
      321 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      323 GETTABLEKS                       R19 R20 K32 ["Text"]
      325 SETTABLEKS                       R19 R18 K23 ["variant"]
      327 GETUPVAL                         R22 0
      328 GETTABLEKS                       R21 R22 K28 ["Enums"]
      330 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      332 GETTABLEKS                       R19 R20 K34 ["Fill"]
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
      356 GETUPVAL                         R22 0
      357 GETTABLEKS                       R21 R22 K28 ["Enums"]
      359 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      361 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      363 SETTABLEKS                       R19 R18 K22 ["size"]
      365 GETUPVAL                         R22 0
      366 GETTABLEKS                       R21 R22 K28 ["Enums"]
      368 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      370 GETTABLEKS                       R19 R20 K32 ["Text"]
      372 SETTABLEKS                       R19 R18 K23 ["variant"]
      374 GETUPVAL                         R22 0
      375 GETTABLEKS                       R21 R22 K28 ["Enums"]
      377 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      379 GETTABLEKS                       R19 R20 K34 ["Fill"]
      381 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      383 MOVE                             R19 R15
      384 CALL                             R19 0 1
      385 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      387 SETTABLEKS                       R4 R18 K44 ["isDisabled"]
      389 SETTABLEKS                       R9 R18 K25 ["onActivated"]
      391 CALL                             R16 2 1
      392 SETTABLEKS                       R16 R14 K49 ["ClearConversationButton"]
      394 GETUPVAL                         R17 1
      395 GETTABLEKS                       R16 R17 K50 ["useRef"]
      397 LOADNIL                          R17
      398 CALL                             R16 1 1
      399 GETUPVAL                         R18 1
      400 GETTABLEKS                       R17 R18 K50 ["useRef"]
      402 LOADNIL                          R18
      403 CALL                             R17 1 1
      404 GETUPVAL                         R18 20
      405 CALL                             R18 0 1
      406 JUMPIFNOT                        R18 ; [+13]
      407 GETUPVAL                         R19 1
      408 GETTABLEKS                       R18 R19 K51 ["useEffect"]
      410 NEWCLOSURE                       R19 P6
      411 CAPTURE                          VAL R6
      412 CAPTURE                          VAL R16
      413 CAPTURE                          VAL R7
      414 NEWTABLE                         R20 0 1
      416 MOVE                             R21 R6
      417 SETLIST                          R20 R21 1 [1]
      419 CALL                             R18 2 0
      420 GETUPVAL                         R19 1
      421 GETTABLEKS                       R18 R19 K51 ["useEffect"]
      423 NEWCLOSURE                       R19 P7
      424 CAPTURE                          VAL R17
      425 NEWTABLE                         R20 0 1
      427 GETTABLEKS                       R21 R17 K52 ["current"]
      429 SETLIST                          R20 R21 1 [1]
      431 CALL                             R18 2 0
      432 GETUPVAL                         R18 16
      433 GETUPVAL                         R20 21
      434 GETTABLEKS                       R19 R20 K53 ["Root"]
      436 DUPTABLE                         R20 K55 [{"isOpen"}]
      437 SETTABLEKS                       R6 R20 K54 ["isOpen"]
      439 DUPTABLE                         R21 K58 [{"SettingsAnchor", "Content"}]
      440 GETUPVAL                         R22 16
      441 GETUPVAL                         R24 21
      442 GETTABLEKS                       R23 R24 K59 ["Anchor"]
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
      470 GETUPVAL                         R31 23
      471 GETTABLEKS                       R30 R31 K71 ["Header"]
      473 GETTABLEKS                       R29 R30 K72 ["SettingsButton"]
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
      492 GETUPVAL                         R24 21
      493 GETTABLEKS                       R23 R24 K57 ["Content"]
      495 DUPTABLE                         R24 K77 [{"side", "align", "hasArrow", "onPressedOutside"}]
      496 DUPTABLE                         R25 K80 [{"position", "offset"}]
      497 GETUPVAL                         R29 0
      498 GETTABLEKS                       R28 R29 K28 ["Enums"]
      500 GETTABLEKS                       R27 R28 K81 ["PopoverSide"]
      502 GETTABLEKS                       R26 R27 K82 ["Bottom"]
      504 SETTABLEKS                       R26 R25 K78 ["position"]
      506 GETTABLEKS                       R27 R1 K83 ["Gap"]
      508 GETTABLEKS                       R26 R27 K30 ["XSmall"]
      510 SETTABLEKS                       R26 R25 K79 ["offset"]
      512 SETTABLEKS                       R25 R24 K73 ["side"]
      514 GETUPVAL                         R28 0
      515 GETTABLEKS                       R27 R28 K28 ["Enums"]
      517 GETTABLEKS                       R26 R27 K84 ["PopoverAlign"]
      519 GETTABLEKS                       R25 R26 K85 ["Start"]
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
      539 GETUPVAL                         R31 23
      540 GETTABLEKS                       R30 R31 K71 ["Header"]
      542 GETTABLEKS                       R29 R30 K86 ["SettingsContent"]
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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["get"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R0 R1 K1 ["hasInternalPermission"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K2 ["showInternalSettings"]
       16 RETURN                           R0 1
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["showIntegrations"]
        6 GETTABLEKS                       R4 R2 K1 ["showApiKeys"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R7 0 0
       17 CALL                             R5 2 1
       18 GETUPVAL                         R6 5
       19 GETUPVAL                         R7 6
       20 DUPTABLE                         R8 K5 [{"tag", "LayoutOrder"}]
       21 NEWTABLE                         R9 4 0
       23 LOADB                            R10 1
       24 SETTABLEKS                       R10 R9 K6 ["row size-full-0 auto-y padding-small gap-xsmall"]
       26 GETUPVAL                         R11 7
       27 CALL                             R11 0 1
       28 NOT                              R10 R11
       29 SETTABLEKS                       R10 R9 K7 ["align-x-right"]
       31 GETUPVAL                         R10 7
       32 CALL                             R10 0 1
       33 JUMPIF                           R10 ; [+2]
       34 GETUPVAL                         R10 8
       35 CALL                             R10 0 1
       36 SETTABLEKS                       R10 R9 K8 ["align-y-center"]
       38 SETTABLEKS                       R9 R8 K3 ["tag"]
       40 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       42 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       44 DUPTABLE                         R9 K14 [{"FillArea", "Version", "Expand", "Settings", "DialogWidget"}]
       45 GETUPVAL                         R11 7
       46 CALL                             R11 0 1
       47 JUMPIFNOT                        R11 ; [+23]
       48 GETUPVAL                         R10 5
       49 GETUPVAL                         R11 6
       50 DUPTABLE                         R12 K5 [{"tag", "LayoutOrder"}]
       51 LOADK                            R13 K15 ["fill align-x-left align-y-center"]
       52 SETTABLEKS                       R13 R12 K3 ["tag"]
       54 MOVE                             R13 R1
       55 CALL                             R13 0 1
       56 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       58 DUPTABLE                         R13 K17 [{"ToggleThreadsMenuButton"}]
       59 GETUPVAL                         R14 5
       60 GETUPVAL                         R15 9
       61 DUPTABLE                         R16 K18 [{"LayoutOrder"}]
       62 MOVE                             R17 R1
       63 CALL                             R17 0 1
       64 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K16 ["ToggleThreadsMenuButton"]
       69 CALL                             R10 3 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 SETTABLEKS                       R10 R9 K9 ["FillArea"]
       74 GETUPVAL                         R11 8
       75 CALL                             R11 0 1
       76 JUMPIFNOT                        R11 ; [+15]
       77 GETUPVAL                         R10 5
       78 GETUPVAL                         R11 10
       79 DUPTABLE                         R12 K20 [{"tag", "Text", "LayoutOrder"}]
       80 LOADK                            R13 K21 ["auto-xy text-caption-small content-muted"]
       81 SETTABLEKS                       R13 R12 K3 ["tag"]
       83 LOADK                            R13 K22 ["v2026416"]
       84 SETTABLEKS                       R13 R12 K19 ["Text"]
       86 MOVE                             R13 R1
       87 CALL                             R13 0 1
       88 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       90 CALL                             R10 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R10
       93 SETTABLEKS                       R10 R9 K10 ["Version"]
       95 GETUPVAL                         R10 5
       96 GETUPVAL                         R11 11
       97 DUPTABLE                         R12 K18 [{"LayoutOrder"}]
       98 MOVE                             R13 R1
       99 CALL                             R13 0 1
      100 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K11 ["Expand"]
      105 GETUPVAL                         R10 5
      106 GETUPVAL                         R11 12
      107 DUPTABLE                         R12 K24 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings"}]
      108 MOVE                             R13 R1
      109 CALL                             R13 0 1
      110 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      112 SETTABLEKS                       R3 R12 K0 ["showIntegrations"]
      114 SETTABLEKS                       R4 R12 K1 ["showApiKeys"]
      116 SETTABLEKS                       R5 R12 K23 ["showInternalSettings"]
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K12 ["Settings"]
      121 GETTABLEKS                       R10 R2 K25 ["root"]
      123 SETTABLEKS                       R10 R9 K13 ["DialogWidget"]
      125 CALL                             R6 3 -1
      126 RETURN                           R6 -1

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
       94 GETTABLEKS                       R13 R14 K25 ["useCurrentThread"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R15 K26 ["useEditContent"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      108 GETTABLEKS                       R15 R16 K27 ["useGetThread"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R17 R0 K23 ["Hooks"]
      115 GETTABLEKS                       R16 R17 K28 ["useRemoveThread"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R18 R0 K23 ["Hooks"]
      122 GETTABLEKS                       R17 R18 K29 ["useSettingsDialog"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R19 R0 K30 ["Guest"]
      129 GETTABLEKS                       R18 R19 K31 ["Environment"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R20 R0 K32 ["Flags"]
      136 GETTABLEKS                       R19 R20 K33 ["FFlagAssistantMultiEditExternalClient"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R21 R0 K32 ["Flags"]
      143 GETTABLEKS                       R20 R21 K34 ["FFlagAssistantMultipleChatPersistence"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R22 R0 K32 ["Flags"]
      150 GETTABLEKS                       R21 R22 K35 ["FFlagAssistantPrivilegedCodeExecution"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R23 R0 K32 ["Flags"]
      157 GETTABLEKS                       R22 R23 K36 ["FFlagAssistantShowVersion"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R24 R0 K32 ["Flags"]
      164 GETTABLEKS                       R23 R24 K37 ["FFlagExternalMCPUI"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R25 R0 K32 ["Flags"]
      171 GETTABLEKS                       R24 R25 K38 ["FFlagHidePopoverWhenParentWidgetTooSmall"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R26 R0 K32 ["Flags"]
      178 GETTABLEKS                       R25 R26 K39 ["FFlagMCPAssistantManagementMenu"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R27 R0 K32 ["Flags"]
      185 GETTABLEKS                       R26 R27 K40 ["FIntAssistantMinPopoverHeight"]
      187 CALL                             R25 1 1
      188 GETTABLEKS                       R26 R2 K41 ["Button"]
      190 GETTABLEKS                       R27 R2 K42 ["Popover"]
      192 GETTABLEKS                       R28 R2 K43 ["Text"]
      194 GETTABLEKS                       R29 R2 K44 ["View"]
      196 GETTABLEKS                       R30 R6 K45 ["createNextOrder"]
      198 GETTABLEKS                       R31 R5 K46 ["createElement"]
      200 GETTABLEKS                       R32 R3 K47 ["InputDisabledReasons"]
      202 GETTABLEKS                       R33 R10 K48 ["DEFAULT_STUDIO_MODEL"]
      204 DUPCLOSURE                       R34 K49 [PROTO_0]
      205 CAPTURE                          VAL R25
      206 DUPTABLE                         R35 K52 [{"Dark", "Light"}]
      207 LOADK                            R36 K53 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      208 SETTABLEKS                       R36 R35 K50 ["Dark"]
      210 LOADK                            R36 K54 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      211 SETTABLEKS                       R36 R35 K51 ["Light"]
      213 DUPCLOSURE                       R36 K55 [PROTO_4]
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R31
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R35
      222 DUPCLOSURE                       R37 K56 [PROTO_17]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R32
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R33
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R30
      239 CAPTURE                          VAL R31
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R25
      248 DUPCLOSURE                       R38 K57 [PROTO_19]
      249 CAPTURE                          VAL R30
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R20
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R29
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R21
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R28
      260 CAPTURE                          VAL R36
      261 CAPTURE                          VAL R37
      262 RETURN                           R38 1
