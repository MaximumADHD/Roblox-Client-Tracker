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
        0 DUPTABLE                         R0 K4 [{"ClearConversation", "RemoveCurrentChat", "ManageIntegrations", "EditApiKeys"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Settings"]
        3 LOADK                            R4 K0 ["ClearConversation"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ClearConversation"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["Settings"]
       11 LOADK                            R4 K1 ["RemoveCurrentChat"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["RemoveCurrentChat"]
       17 GETUPVAL                         R2 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K7 ["IntegrationManagement"]
       21 LOADK                            R4 K2 ["ManageIntegrations"]
       22 NAMECALL                         R1 R1 K6 ["getText"]
       24 CALL                             R1 3 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K2 ["ManageIntegrations"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K8 ["SettingsDialog"]
       31 LOADK                            R4 K3 ["EditApiKeys"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K3 ["EditApiKeys"]
       37 RETURN                           R0 1

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

PROTO_13:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
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
      108 NEWTABLE                         R15 0 2
      110 GETUPVAL                         R17 13
      111 GETTABLEKS                       R16 R17 K12 ["locale"]
      113 MOVE                             R17 R5
      114 SETLIST                          R15 R16 2 [1]
      116 CALL                             R13 2 1
      117 NEWTABLE                         R14 0 0
      119 GETUPVAL                         R15 14
      120 CALL                             R15 0 1
      121 GETTABLEKS                       R16 R0 K13 ["showApiKeys"]
      123 JUMPIFNOT                        R16 ; [+75]
      124 GETUPVAL                         R16 15
      125 GETUPVAL                         R17 16
      126 DUPTABLE                         R18 K16 [{"tag", "LayoutOrder"}]
      127 LOADK                            R19 K17 ["col auto-xy gap-xxsmall"]
      128 SETTABLEKS                       R19 R18 K14 ["tag"]
      130 MOVE                             R19 R15
      131 CALL                             R19 0 1
      132 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      134 DUPTABLE                         R19 K20 [{"EditApiKeysButton", "CurrentModelText"}]
      135 GETUPVAL                         R20 15
      136 GETUPVAL                         R21 17
      137 DUPTABLE                         R22 K26 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      138 GETTABLEKS                       R23 R13 K27 ["EditApiKeys"]
      140 SETTABLEKS                       R23 R22 K21 ["text"]
      142 GETUPVAL                         R26 0
      143 GETTABLEKS                       R25 R26 K28 ["Enums"]
      145 GETTABLEKS                       R24 R25 K29 ["ButtonSize"]
      147 GETTABLEKS                       R23 R24 K30 ["XSmall"]
      149 SETTABLEKS                       R23 R22 K22 ["size"]
      151 GETUPVAL                         R26 0
      152 GETTABLEKS                       R25 R26 K28 ["Enums"]
      154 GETTABLEKS                       R24 R25 K31 ["ButtonVariant"]
      156 GETTABLEKS                       R23 R24 K32 ["Text"]
      158 SETTABLEKS                       R23 R22 K23 ["variant"]
      160 GETUPVAL                         R26 0
      161 GETTABLEKS                       R25 R26 K28 ["Enums"]
      163 GETTABLEKS                       R24 R25 K33 ["FillBehavior"]
      165 GETTABLEKS                       R23 R24 K34 ["Fill"]
      167 SETTABLEKS                       R23 R22 K24 ["fillBehavior"]
      169 MOVE                             R23 R15
      170 CALL                             R23 0 1
      171 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      173 NEWCLOSURE                       R23 P3
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R0
      176 SETTABLEKS                       R23 R22 K25 ["onActivated"]
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K18 ["EditApiKeysButton"]
      181 GETUPVAL                         R20 15
      182 GETUPVAL                         R21 18
      183 DUPTABLE                         R22 K35 [{"tag", "Text", "LayoutOrder"}]
      184 LOADK                            R23 K36 ["auto-xy text-caption-medium text-wrap text-align-x-left padding-left-small"]
      185 SETTABLEKS                       R23 R22 K14 ["tag"]
      187 SETTABLEKS                       R12 R22 K32 ["Text"]
      189 MOVE                             R23 R15
      190 CALL                             R23 0 1
      191 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      193 CALL                             R20 2 1
      194 SETTABLEKS                       R20 R19 K19 ["CurrentModelText"]
      196 CALL                             R16 3 1
      197 SETTABLEKS                       R16 R14 K37 ["EditApiKeysGroup"]
      199 JUMPIFNOT                        R5 ; [+49]
      200 GETTABLEKS                       R16 R0 K38 ["showIntegrations"]
      202 JUMPIFNOT                        R16 ; [+46]
      203 GETUPVAL                         R16 15
      204 GETUPVAL                         R17 17
      205 DUPTABLE                         R18 K26 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      206 GETTABLEKS                       R19 R13 K39 ["ManageIntegrations"]
      208 SETTABLEKS                       R19 R18 K21 ["text"]
      210 GETUPVAL                         R22 0
      211 GETTABLEKS                       R21 R22 K28 ["Enums"]
      213 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      215 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      217 SETTABLEKS                       R19 R18 K22 ["size"]
      219 GETUPVAL                         R22 0
      220 GETTABLEKS                       R21 R22 K28 ["Enums"]
      222 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      224 GETTABLEKS                       R19 R20 K32 ["Text"]
      226 SETTABLEKS                       R19 R18 K23 ["variant"]
      228 GETUPVAL                         R22 0
      229 GETTABLEKS                       R21 R22 K28 ["Enums"]
      231 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      233 GETTABLEKS                       R19 R20 K34 ["Fill"]
      235 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      237 MOVE                             R19 R15
      238 CALL                             R19 0 1
      239 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      241 NEWCLOSURE                       R19 P4
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R19 R18 K25 ["onActivated"]
      246 CALL                             R16 2 1
      247 SETTABLEKS                       R16 R14 K40 ["ManageIntegrationsButton"]
      249 GETUPVAL                         R16 8
      250 CALL                             R16 0 1
      251 JUMPIFNOT                        R16 ; [+47]
      252 GETUPVAL                         R16 15
      253 GETUPVAL                         R17 17
      254 DUPTABLE                         R18 K42 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      255 GETTABLEKS                       R19 R13 K43 ["RemoveCurrentChat"]
      257 SETTABLEKS                       R19 R18 K21 ["text"]
      259 GETUPVAL                         R22 0
      260 GETTABLEKS                       R21 R22 K28 ["Enums"]
      262 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      264 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      266 SETTABLEKS                       R19 R18 K22 ["size"]
      268 GETUPVAL                         R22 0
      269 GETTABLEKS                       R21 R22 K28 ["Enums"]
      271 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      273 GETTABLEKS                       R19 R20 K32 ["Text"]
      275 SETTABLEKS                       R19 R18 K23 ["variant"]
      277 GETUPVAL                         R22 0
      278 GETTABLEKS                       R21 R22 K28 ["Enums"]
      280 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      282 GETTABLEKS                       R19 R20 K34 ["Fill"]
      284 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      286 MOVE                             R19 R15
      287 CALL                             R19 0 1
      288 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      290 OR                               R19 R4 R11
      291 SETTABLEKS                       R19 R18 K41 ["isDisabled"]
      293 SETTABLEKS                       R10 R18 K25 ["onActivated"]
      295 CALL                             R16 2 1
      296 SETTABLEKS                       R16 R14 K44 ["RemoveCurrentThreadButton"]
      298 JUMP                             ; [+45]
      299 GETUPVAL                         R16 15
      300 GETUPVAL                         R17 17
      301 DUPTABLE                         R18 K42 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      302 GETTABLEKS                       R19 R13 K45 ["ClearConversation"]
      304 SETTABLEKS                       R19 R18 K21 ["text"]
      306 GETUPVAL                         R22 0
      307 GETTABLEKS                       R21 R22 K28 ["Enums"]
      309 GETTABLEKS                       R20 R21 K29 ["ButtonSize"]
      311 GETTABLEKS                       R19 R20 K30 ["XSmall"]
      313 SETTABLEKS                       R19 R18 K22 ["size"]
      315 GETUPVAL                         R22 0
      316 GETTABLEKS                       R21 R22 K28 ["Enums"]
      318 GETTABLEKS                       R20 R21 K31 ["ButtonVariant"]
      320 GETTABLEKS                       R19 R20 K32 ["Text"]
      322 SETTABLEKS                       R19 R18 K23 ["variant"]
      324 GETUPVAL                         R22 0
      325 GETTABLEKS                       R21 R22 K28 ["Enums"]
      327 GETTABLEKS                       R20 R21 K33 ["FillBehavior"]
      329 GETTABLEKS                       R19 R20 K34 ["Fill"]
      331 SETTABLEKS                       R19 R18 K24 ["fillBehavior"]
      333 MOVE                             R19 R15
      334 CALL                             R19 0 1
      335 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      337 SETTABLEKS                       R4 R18 K41 ["isDisabled"]
      339 SETTABLEKS                       R9 R18 K25 ["onActivated"]
      341 CALL                             R16 2 1
      342 SETTABLEKS                       R16 R14 K46 ["ClearConversationButton"]
      344 GETUPVAL                         R17 1
      345 GETTABLEKS                       R16 R17 K47 ["useRef"]
      347 LOADNIL                          R17
      348 CALL                             R16 1 1
      349 GETUPVAL                         R18 1
      350 GETTABLEKS                       R17 R18 K47 ["useRef"]
      352 LOADNIL                          R18
      353 CALL                             R17 1 1
      354 GETUPVAL                         R18 19
      355 CALL                             R18 0 1
      356 JUMPIFNOT                        R18 ; [+13]
      357 GETUPVAL                         R19 1
      358 GETTABLEKS                       R18 R19 K48 ["useEffect"]
      360 NEWCLOSURE                       R19 P5
      361 CAPTURE                          VAL R6
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R7
      364 NEWTABLE                         R20 0 1
      366 MOVE                             R21 R6
      367 SETLIST                          R20 R21 1 [1]
      369 CALL                             R18 2 0
      370 GETUPVAL                         R19 1
      371 GETTABLEKS                       R18 R19 K48 ["useEffect"]
      373 NEWCLOSURE                       R19 P6
      374 CAPTURE                          VAL R17
      375 NEWTABLE                         R20 0 1
      377 GETTABLEKS                       R21 R17 K49 ["current"]
      379 SETLIST                          R20 R21 1 [1]
      381 CALL                             R18 2 0
      382 GETUPVAL                         R18 15
      383 GETUPVAL                         R20 20
      384 GETTABLEKS                       R19 R20 K50 ["Root"]
      386 DUPTABLE                         R20 K52 [{"isOpen"}]
      387 SETTABLEKS                       R6 R20 K51 ["isOpen"]
      389 DUPTABLE                         R21 K55 [{"SettingsAnchor", "Content"}]
      390 GETUPVAL                         R22 15
      391 GETUPVAL                         R24 20
      392 GETTABLEKS                       R23 R24 K56 ["Anchor"]
      394 DUPTABLE                         R24 K58 [{"LayoutOrder", "ref"}]
      395 GETTABLEKS                       R25 R0 K15 ["LayoutOrder"]
      397 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      399 GETUPVAL                         R26 19
      400 CALL                             R26 0 1
      401 JUMPIFNOT                        R26 ; [+2]
      402 MOVE                             R25 R16
      403 JUMP                             ; [+1]
      404 LOADNIL                          R25
      405 SETTABLEKS                       R25 R24 K57 ["ref"]
      407 DUPTABLE                         R25 K60 [{"Button"}]
      408 GETUPVAL                         R26 15
      409 GETUPVAL                         R27 21
      410 DUPTABLE                         R28 K64 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      411 LOADK                            R29 K65 ["icons/actions/overflow"]
      412 SETTABLEKS                       R29 R28 K61 ["icon"]
      414 LOADK                            R29 K66 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      415 SETTABLEKS                       R29 R28 K14 ["tag"]
      417 LOADK                            R29 K67 ["size-400-400 content-emphasis"]
      418 SETTABLEKS                       R29 R28 K62 ["iconTag"]
      420 GETUPVAL                         R31 22
      421 GETTABLEKS                       R30 R31 K68 ["Header"]
      423 GETTABLEKS                       R29 R30 K69 ["SettingsButton"]
      425 SETTABLEKS                       R29 R28 K63 ["testId"]
      427 NEWCLOSURE                       R29 P7
      428 CAPTURE                          UPVAL U19
      429 CAPTURE                          VAL R6
      430 CAPTURE                          VAL R7
      431 CAPTURE                          VAL R16
      432 CAPTURE                          UPVAL U23
      433 SETTABLEKS                       R29 R28 K25 ["onActivated"]
      435 CALL                             R26 2 1
      436 SETTABLEKS                       R26 R25 K59 ["Button"]
      438 CALL                             R22 3 1
      439 SETTABLEKS                       R22 R21 K53 ["SettingsAnchor"]
      441 GETUPVAL                         R22 15
      442 GETUPVAL                         R24 20
      443 GETTABLEKS                       R23 R24 K54 ["Content"]
      445 DUPTABLE                         R24 K74 [{"side", "align", "hasArrow", "onPressedOutside"}]
      446 DUPTABLE                         R25 K77 [{"position", "offset"}]
      447 GETUPVAL                         R29 0
      448 GETTABLEKS                       R28 R29 K28 ["Enums"]
      450 GETTABLEKS                       R27 R28 K78 ["PopoverSide"]
      452 GETTABLEKS                       R26 R27 K79 ["Bottom"]
      454 SETTABLEKS                       R26 R25 K75 ["position"]
      456 GETTABLEKS                       R27 R1 K80 ["Gap"]
      458 GETTABLEKS                       R26 R27 K30 ["XSmall"]
      460 SETTABLEKS                       R26 R25 K76 ["offset"]
      462 SETTABLEKS                       R25 R24 K70 ["side"]
      464 GETUPVAL                         R28 0
      465 GETTABLEKS                       R27 R28 K28 ["Enums"]
      467 GETTABLEKS                       R26 R27 K81 ["PopoverAlign"]
      469 GETTABLEKS                       R25 R26 K82 ["Start"]
      471 SETTABLEKS                       R25 R24 K71 ["align"]
      473 LOADB                            R25 0
      474 SETTABLEKS                       R25 R24 K72 ["hasArrow"]
      476 NEWCLOSURE                       R25 P8
      477 CAPTURE                          VAL R7
      478 SETTABLEKS                       R25 R24 K73 ["onPressedOutside"]
      480 DUPTABLE                         R25 K84 [{"SettingsContent"}]
      481 GETUPVAL                         R26 15
      482 GETUPVAL                         R27 16
      483 DUPTABLE                         R28 K86 [{"tag", "ref", "testId", "sizeConstraint"}]
      484 LOADK                            R29 K87 ["col auto-xy radius-medium padding-small bg-surface-100 gap-small align-x-left"]
      485 SETTABLEKS                       R29 R28 K14 ["tag"]
      487 SETTABLEKS                       R17 R28 K57 ["ref"]
      489 GETUPVAL                         R31 22
      490 GETTABLEKS                       R30 R31 K68 ["Header"]
      492 GETTABLEKS                       R29 R30 K83 ["SettingsContent"]
      494 SETTABLEKS                       R29 R28 K63 ["testId"]
      496 DUPTABLE                         R29 K89 [{"MinSize"}]
      497 GETIMPORT                        R30 K92 [Vector2.new]
      499 LOADN                            R31 150
      500 LOADN                            R32 0
      501 CALL                             R30 2 1
      502 SETTABLEKS                       R30 R29 K88 ["MinSize"]
      504 SETTABLEKS                       R29 R28 K85 ["sizeConstraint"]
      506 MOVE                             R29 R14
      507 CALL                             R26 3 1
      508 SETTABLEKS                       R26 R25 K83 ["SettingsContent"]
      510 CALL                             R22 3 1
      511 SETTABLEKS                       R22 R21 K54 ["Content"]
      513 CALL                             R18 3 -1
      514 RETURN                           R18 -1

PROTO_17:
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
      127 GETTABLEKS                       R19 R0 K30 ["Flags"]
      129 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantMultiEditExternalClient"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R20 R0 K30 ["Flags"]
      136 GETTABLEKS                       R19 R20 K32 ["FFlagAssistantMultipleChatPersistence"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R21 R0 K30 ["Flags"]
      143 GETTABLEKS                       R20 R21 K33 ["FFlagExternalMCPUI"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R22 R0 K30 ["Flags"]
      150 GETTABLEKS                       R21 R22 K34 ["FFlagHidePopoverWhenParentWidgetTooSmall"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R23 R0 K30 ["Flags"]
      157 GETTABLEKS                       R22 R23 K35 ["FFlagMCPAssistantManagementMenu"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R24 R0 K30 ["Flags"]
      164 GETTABLEKS                       R23 R24 K36 ["FIntAssistantMinPopoverHeight"]
      166 CALL                             R22 1 1
      167 GETTABLEKS                       R23 R2 K37 ["Button"]
      169 GETTABLEKS                       R24 R2 K38 ["Popover"]
      171 GETTABLEKS                       R25 R2 K39 ["Text"]
      173 GETTABLEKS                       R26 R2 K40 ["View"]
      175 GETTABLEKS                       R27 R6 K41 ["createNextOrder"]
      177 GETTABLEKS                       R28 R5 K42 ["createElement"]
      179 GETTABLEKS                       R29 R3 K43 ["InputDisabledReasons"]
      181 GETTABLEKS                       R30 R10 K44 ["DEFAULT_STUDIO_MODEL"]
      183 DUPCLOSURE                       R31 K45 [PROTO_0]
      184 CAPTURE                          VAL R22
      185 DUPTABLE                         R32 K48 [{"Dark", "Light"}]
      186 LOADK                            R33 K49 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      187 SETTABLEKS                       R33 R32 K46 ["Dark"]
      189 LOADK                            R33 K50 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      190 SETTABLEKS                       R33 R32 K47 ["Light"]
      192 DUPCLOSURE                       R33 K51 [PROTO_4]
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R32
      201 DUPCLOSURE                       R34 K52 [PROTO_16]
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R29
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R30
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R22
      226 DUPCLOSURE                       R35 K53 [PROTO_17]
      227 CAPTURE                          VAL R27
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R26
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R33
      234 CAPTURE                          VAL R34
      235 RETURN                           R35 1
