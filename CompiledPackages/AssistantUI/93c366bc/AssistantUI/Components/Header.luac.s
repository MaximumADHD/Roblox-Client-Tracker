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
       58 CAPTURE                          UPVAL U2
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
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showApiKeys"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["showIntegrations"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
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
       34 JUMPIF                           R7 ; [+5]
       35 GETUPVAL                         R7 7
       36 CALL                             R7 0 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 GETUPVAL                         R7 8
       39 CALL                             R7 0 1
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K7 ["useState"]
       43 LOADB                            R9 0
       44 CALL                             R8 1 2
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R10 R11 K2 ["useContext"]
       48 GETUPVAL                         R12 9
       49 GETTABLEKS                       R11 R12 K3 ["Context"]
       51 CALL                             R10 1 1
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R11 R12 K8 ["useMemo"]
       55 NEWCLOSURE                       R12 P0
       56 CAPTURE                          VAL R10
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          UPVAL U11
       59 NEWTABLE                         R13 0 2
       61 GETTABLEKS                       R14 R10 K9 ["selectedModel"]
       63 GETUPVAL                         R16 11
       64 GETTABLEKS                       R15 R16 K10 ["locale"]
       66 SETLIST                          R13 R14 2 [1]
       68 CALL                             R11 2 1
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R12 R13 K8 ["useMemo"]
       72 NEWCLOSURE                       R13 P1
       73 CAPTURE                          UPVAL U11
       74 CAPTURE                          VAL R7
       75 NEWTABLE                         R14 0 2
       77 GETUPVAL                         R16 11
       78 GETTABLEKS                       R15 R16 K10 ["locale"]
       80 MOVE                             R16 R7
       81 SETLIST                          R14 R15 2 [1]
       83 CALL                             R12 2 1
       84 NEWTABLE                         R13 0 0
       86 GETTABLEKS                       R14 R0 K11 ["showApiKeys"]
       88 JUMPIFNOT                        R14 ; [+75]
       89 GETUPVAL                         R14 12
       90 GETUPVAL                         R15 13
       91 DUPTABLE                         R16 K14 [{"tag", "LayoutOrder"}]
       92 LOADK                            R17 K15 ["col auto-xy gap-xxsmall"]
       93 SETTABLEKS                       R17 R16 K12 ["tag"]
       95 MOVE                             R17 R6
       96 CALL                             R17 0 1
       97 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       99 DUPTABLE                         R17 K18 [{"EditApiKeysButton", "CurrentModelText"}]
      100 GETUPVAL                         R18 12
      101 GETUPVAL                         R19 14
      102 DUPTABLE                         R20 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      103 GETTABLEKS                       R21 R12 K25 ["EditApiKeys"]
      105 SETTABLEKS                       R21 R20 K19 ["text"]
      107 GETUPVAL                         R24 0
      108 GETTABLEKS                       R23 R24 K26 ["Enums"]
      110 GETTABLEKS                       R22 R23 K27 ["ButtonSize"]
      112 GETTABLEKS                       R21 R22 K28 ["XSmall"]
      114 SETTABLEKS                       R21 R20 K20 ["size"]
      116 GETUPVAL                         R24 0
      117 GETTABLEKS                       R23 R24 K26 ["Enums"]
      119 GETTABLEKS                       R22 R23 K29 ["ButtonVariant"]
      121 GETTABLEKS                       R21 R22 K30 ["Text"]
      123 SETTABLEKS                       R21 R20 K21 ["variant"]
      125 GETUPVAL                         R24 0
      126 GETTABLEKS                       R23 R24 K26 ["Enums"]
      128 GETTABLEKS                       R22 R23 K31 ["FillBehavior"]
      130 GETTABLEKS                       R21 R22 K32 ["Fill"]
      132 SETTABLEKS                       R21 R20 K22 ["fillBehavior"]
      134 MOVE                             R21 R6
      135 CALL                             R21 0 1
      136 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      138 NEWCLOSURE                       R21 P2
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R0
      141 SETTABLEKS                       R21 R20 K23 ["onActivated"]
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K16 ["EditApiKeysButton"]
      146 GETUPVAL                         R18 12
      147 GETUPVAL                         R19 15
      148 DUPTABLE                         R20 K33 [{"tag", "Text", "LayoutOrder"}]
      149 LOADK                            R21 K34 ["auto-xy text-caption-medium text-wrap text-align-x-left padding-left-small"]
      150 SETTABLEKS                       R21 R20 K12 ["tag"]
      152 SETTABLEKS                       R11 R20 K30 ["Text"]
      154 MOVE                             R21 R6
      155 CALL                             R21 0 1
      156 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K17 ["CurrentModelText"]
      161 CALL                             R14 3 1
      162 SETTABLEKS                       R14 R13 K35 ["EditApiKeysGroup"]
      164 JUMPIFNOT                        R7 ; [+49]
      165 GETTABLEKS                       R14 R0 K36 ["showIntegrations"]
      167 JUMPIFNOT                        R14 ; [+46]
      168 GETUPVAL                         R14 12
      169 GETUPVAL                         R15 14
      170 DUPTABLE                         R16 K24 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      171 GETTABLEKS                       R17 R12 K37 ["ManageIntegrations"]
      173 SETTABLEKS                       R17 R16 K19 ["text"]
      175 GETUPVAL                         R20 0
      176 GETTABLEKS                       R19 R20 K26 ["Enums"]
      178 GETTABLEKS                       R18 R19 K27 ["ButtonSize"]
      180 GETTABLEKS                       R17 R18 K28 ["XSmall"]
      182 SETTABLEKS                       R17 R16 K20 ["size"]
      184 GETUPVAL                         R20 0
      185 GETTABLEKS                       R19 R20 K26 ["Enums"]
      187 GETTABLEKS                       R18 R19 K29 ["ButtonVariant"]
      189 GETTABLEKS                       R17 R18 K30 ["Text"]
      191 SETTABLEKS                       R17 R16 K21 ["variant"]
      193 GETUPVAL                         R20 0
      194 GETTABLEKS                       R19 R20 K26 ["Enums"]
      196 GETTABLEKS                       R18 R19 K31 ["FillBehavior"]
      198 GETTABLEKS                       R17 R18 K32 ["Fill"]
      200 SETTABLEKS                       R17 R16 K22 ["fillBehavior"]
      202 MOVE                             R17 R6
      203 CALL                             R17 0 1
      204 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      206 NEWCLOSURE                       R17 P3
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R0
      209 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      211 CALL                             R14 2 1
      212 SETTABLEKS                       R14 R13 K38 ["ManageIntegrationsButton"]
      214 GETUPVAL                         R14 12
      215 GETUPVAL                         R15 14
      216 DUPTABLE                         R16 K40 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      217 GETTABLEKS                       R17 R12 K41 ["ClearConversation"]
      219 SETTABLEKS                       R17 R16 K19 ["text"]
      221 GETUPVAL                         R20 0
      222 GETTABLEKS                       R19 R20 K26 ["Enums"]
      224 GETTABLEKS                       R18 R19 K27 ["ButtonSize"]
      226 GETTABLEKS                       R17 R18 K28 ["XSmall"]
      228 SETTABLEKS                       R17 R16 K20 ["size"]
      230 GETUPVAL                         R20 0
      231 GETTABLEKS                       R19 R20 K26 ["Enums"]
      233 GETTABLEKS                       R18 R19 K29 ["ButtonVariant"]
      235 GETTABLEKS                       R17 R18 K30 ["Text"]
      237 SETTABLEKS                       R17 R16 K21 ["variant"]
      239 GETUPVAL                         R20 0
      240 GETTABLEKS                       R19 R20 K26 ["Enums"]
      242 GETTABLEKS                       R18 R19 K31 ["FillBehavior"]
      244 GETTABLEKS                       R17 R18 K32 ["Fill"]
      246 SETTABLEKS                       R17 R16 K22 ["fillBehavior"]
      248 MOVE                             R17 R6
      249 CALL                             R17 0 1
      250 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      252 SETTABLEKS                       R5 R16 K39 ["isDisabled"]
      254 SETTABLEKS                       R2 R16 K23 ["onActivated"]
      256 CALL                             R14 2 1
      257 SETTABLEKS                       R14 R13 K42 ["ClearConversationButton"]
      259 GETUPVAL                         R15 2
      260 GETTABLEKS                       R14 R15 K43 ["useRef"]
      262 LOADNIL                          R15
      263 CALL                             R14 1 1
      264 GETUPVAL                         R16 2
      265 GETTABLEKS                       R15 R16 K43 ["useRef"]
      267 LOADNIL                          R16
      268 CALL                             R15 1 1
      269 GETUPVAL                         R16 16
      270 CALL                             R16 0 1
      271 JUMPIFNOT                        R16 ; [+13]
      272 GETUPVAL                         R17 2
      273 GETTABLEKS                       R16 R17 K44 ["useEffect"]
      275 NEWCLOSURE                       R17 P4
      276 CAPTURE                          VAL R8
      277 CAPTURE                          VAL R14
      278 CAPTURE                          VAL R9
      279 NEWTABLE                         R18 0 1
      281 MOVE                             R19 R8
      282 SETLIST                          R18 R19 1 [1]
      284 CALL                             R16 2 0
      285 GETUPVAL                         R17 2
      286 GETTABLEKS                       R16 R17 K44 ["useEffect"]
      288 NEWCLOSURE                       R17 P5
      289 CAPTURE                          VAL R15
      290 NEWTABLE                         R18 0 1
      292 GETTABLEKS                       R19 R15 K45 ["current"]
      294 SETLIST                          R18 R19 1 [1]
      296 CALL                             R16 2 0
      297 GETUPVAL                         R16 12
      298 GETUPVAL                         R18 17
      299 GETTABLEKS                       R17 R18 K46 ["Root"]
      301 DUPTABLE                         R18 K48 [{"isOpen"}]
      302 SETTABLEKS                       R8 R18 K47 ["isOpen"]
      304 DUPTABLE                         R19 K51 [{"SettingsAnchor", "Content"}]
      305 GETUPVAL                         R20 12
      306 GETUPVAL                         R22 17
      307 GETTABLEKS                       R21 R22 K52 ["Anchor"]
      309 DUPTABLE                         R22 K54 [{"LayoutOrder", "ref"}]
      310 GETTABLEKS                       R23 R0 K13 ["LayoutOrder"]
      312 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      314 GETUPVAL                         R24 16
      315 CALL                             R24 0 1
      316 JUMPIFNOT                        R24 ; [+2]
      317 MOVE                             R23 R14
      318 JUMP                             ; [+1]
      319 LOADNIL                          R23
      320 SETTABLEKS                       R23 R22 K53 ["ref"]
      322 DUPTABLE                         R23 K56 [{"Button"}]
      323 GETUPVAL                         R24 12
      324 GETUPVAL                         R25 18
      325 DUPTABLE                         R26 K60 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      326 LOADK                            R27 K61 ["icons/actions/overflow"]
      327 SETTABLEKS                       R27 R26 K57 ["icon"]
      329 LOADK                            R27 K62 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      330 SETTABLEKS                       R27 R26 K12 ["tag"]
      332 LOADK                            R27 K63 ["size-400-400 content-emphasis"]
      333 SETTABLEKS                       R27 R26 K58 ["iconTag"]
      335 GETUPVAL                         R29 19
      336 GETTABLEKS                       R28 R29 K64 ["Header"]
      338 GETTABLEKS                       R27 R28 K65 ["SettingsButton"]
      340 SETTABLEKS                       R27 R26 K59 ["testId"]
      342 NEWCLOSURE                       R27 P6
      343 CAPTURE                          UPVAL U16
      344 CAPTURE                          VAL R8
      345 CAPTURE                          VAL R9
      346 CAPTURE                          VAL R14
      347 CAPTURE                          UPVAL U20
      348 SETTABLEKS                       R27 R26 K23 ["onActivated"]
      350 CALL                             R24 2 1
      351 SETTABLEKS                       R24 R23 K55 ["Button"]
      353 CALL                             R20 3 1
      354 SETTABLEKS                       R20 R19 K49 ["SettingsAnchor"]
      356 GETUPVAL                         R20 12
      357 GETUPVAL                         R22 17
      358 GETTABLEKS                       R21 R22 K50 ["Content"]
      360 DUPTABLE                         R22 K70 [{"side", "align", "hasArrow", "onPressedOutside"}]
      361 DUPTABLE                         R23 K73 [{"position", "offset"}]
      362 GETUPVAL                         R27 0
      363 GETTABLEKS                       R26 R27 K26 ["Enums"]
      365 GETTABLEKS                       R25 R26 K74 ["PopoverSide"]
      367 GETTABLEKS                       R24 R25 K75 ["Bottom"]
      369 SETTABLEKS                       R24 R23 K71 ["position"]
      371 GETTABLEKS                       R25 R1 K76 ["Gap"]
      373 GETTABLEKS                       R24 R25 K28 ["XSmall"]
      375 SETTABLEKS                       R24 R23 K72 ["offset"]
      377 SETTABLEKS                       R23 R22 K66 ["side"]
      379 GETUPVAL                         R26 0
      380 GETTABLEKS                       R25 R26 K26 ["Enums"]
      382 GETTABLEKS                       R24 R25 K77 ["PopoverAlign"]
      384 GETTABLEKS                       R23 R24 K78 ["Start"]
      386 SETTABLEKS                       R23 R22 K67 ["align"]
      388 LOADB                            R23 0
      389 SETTABLEKS                       R23 R22 K68 ["hasArrow"]
      391 NEWCLOSURE                       R23 P7
      392 CAPTURE                          VAL R9
      393 SETTABLEKS                       R23 R22 K69 ["onPressedOutside"]
      395 DUPTABLE                         R23 K80 [{"SettingsContent"}]
      396 GETUPVAL                         R24 12
      397 GETUPVAL                         R25 13
      398 DUPTABLE                         R26 K82 [{"tag", "ref", "testId", "sizeConstraint"}]
      399 LOADK                            R27 K83 ["col auto-xy radius-medium padding-small bg-surface-100 gap-small align-x-left"]
      400 SETTABLEKS                       R27 R26 K12 ["tag"]
      402 SETTABLEKS                       R15 R26 K53 ["ref"]
      404 GETUPVAL                         R29 19
      405 GETTABLEKS                       R28 R29 K64 ["Header"]
      407 GETTABLEKS                       R27 R28 K79 ["SettingsContent"]
      409 SETTABLEKS                       R27 R26 K59 ["testId"]
      411 DUPTABLE                         R27 K85 [{"MinSize"}]
      412 GETIMPORT                        R28 K88 [Vector2.new]
      414 LOADN                            R29 150
      415 LOADN                            R30 0
      416 CALL                             R28 2 1
      417 SETTABLEKS                       R28 R27 K84 ["MinSize"]
      419 SETTABLEKS                       R27 R26 K81 ["sizeConstraint"]
      421 MOVE                             R27 R13
      422 CALL                             R24 3 1
      423 SETTABLEKS                       R24 R23 K79 ["SettingsContent"]
      425 CALL                             R20 3 1
      426 SETTABLEKS                       R20 R19 K50 ["Content"]
      428 CALL                             R16 3 -1
      429 RETURN                           R16 -1

PROTO_16:
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
      115 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantMultiEditExternalClient"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R18 R0 K28 ["Flags"]
      122 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantMultipleChatSupport"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R19 R0 K28 ["Flags"]
      129 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantPersistConversations"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R20 R0 K28 ["Flags"]
      136 GETTABLEKS                       R19 R20 K32 ["FFlagExternalMCPUI"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R21 R0 K28 ["Flags"]
      143 GETTABLEKS                       R20 R21 K33 ["FFlagHidePopoverWhenParentWidgetTooSmall"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R22 R0 K28 ["Flags"]
      150 GETTABLEKS                       R21 R22 K34 ["FFlagMCPAssistantManagementMenu"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R23 R0 K28 ["Flags"]
      157 GETTABLEKS                       R22 R23 K35 ["FIntAssistantMinPopoverHeight"]
      159 CALL                             R21 1 1
      160 GETTABLEKS                       R22 R2 K36 ["Button"]
      162 GETTABLEKS                       R23 R2 K37 ["Popover"]
      164 GETTABLEKS                       R24 R2 K38 ["Text"]
      166 GETTABLEKS                       R25 R2 K39 ["View"]
      168 GETTABLEKS                       R26 R6 K40 ["createNextOrder"]
      170 GETTABLEKS                       R27 R5 K41 ["createElement"]
      172 GETTABLEKS                       R28 R3 K42 ["InputDisabledReasons"]
      174 GETTABLEKS                       R29 R10 K43 ["DEFAULT_STUDIO_MODEL"]
      176 DUPCLOSURE                       R30 K44 [PROTO_0]
      177 CAPTURE                          VAL R21
      178 DUPTABLE                         R31 K47 [{"Dark", "Light"}]
      179 LOADK                            R32 K48 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      180 SETTABLEKS                       R32 R31 K45 ["Dark"]
      182 LOADK                            R32 K49 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      183 SETTABLEKS                       R32 R31 K46 ["Light"]
      185 DUPCLOSURE                       R32 K50 [PROTO_4]
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R16
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R27
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R31
      195 DUPCLOSURE                       R33 K51 [PROTO_15]
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R29
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R21
      217 DUPCLOSURE                       R34 K52 [PROTO_16]
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R33
      226 RETURN                           R34 1
