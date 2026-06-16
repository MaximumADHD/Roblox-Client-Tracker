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
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+28]
       33 GETUPVAL                         R6 6
       34 GETUPVAL                         R7 7
       35 DUPTABLE                         R8 K9 [{"tag", "onActivated", "LayoutOrder"}]
       36 LOADK                            R9 K10 ["bg-action-link size-600-600 radius-small align-x-center align-y-center"]
       37 SETTABLEKS                       R9 R8 K6 ["tag"]
       39 SETTABLEKS                       R5 R8 K7 ["onActivated"]
       41 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       43 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       45 DUPTABLE                         R9 K12 [{"ExpandImage"}]
       46 GETUPVAL                         R10 6
       47 GETUPVAL                         R11 8
       48 DUPTABLE                         R12 K14 [{"tag", "Image"}]
       49 LOADK                            R13 K15 ["size-400-400 content-emphasis"]
       50 SETTABLEKS                       R13 R12 K6 ["tag"]
       52 GETUPVAL                         R14 9
       53 GETTABLE                         R13 R14 R4
       54 SETTABLEKS                       R13 R12 K13 ["Image"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K11 ["ExpandImage"]
       59 CALL                             R6 3 -1
       60 RETURN                           R6 -1
       61 GETUPVAL                         R6 6
       62 GETUPVAL                         R7 10
       63 DUPTABLE                         R8 K18 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
       64 GETUPVAL                         R10 9
       65 GETTABLE                         R9 R10 R4
       66 SETTABLEKS                       R9 R8 K16 ["icon"]
       68 LOADK                            R9 K19 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
       69 SETTABLEKS                       R9 R8 K6 ["tag"]
       71 LOADK                            R9 K15 ["size-400-400 content-emphasis"]
       72 SETTABLEKS                       R9 R8 K17 ["iconTag"]
       74 SETTABLEKS                       R5 R8 K7 ["onActivated"]
       76 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       78 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       80 CALL                             R6 2 -1
       81 RETURN                           R6 -1

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
        0 DUPTABLE                         R0 K5 [{"ClearConversation", "ManageIntegrations", "EditApiKeys", "InternalSettings", "ManageSkills"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["Settings"]
        3 LOADK                            R4 K0 ["ClearConversation"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ClearConversation"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K8 ["IntegrationManagement"]
       13 LOADK                            R4 K1 ["ManageIntegrations"]
       14 NAMECALL                         R1 R1 K7 ["getText"]
       16 CALL                             R1 3 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K1 ["ManageIntegrations"]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K9 ["SettingsDialog"]
       23 LOADK                            R4 K2 ["EditApiKeys"]
       24 NAMECALL                         R1 R1 K7 ["getText"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K2 ["EditApiKeys"]
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETUPVAL                         R1 0
       33 LOADK                            R3 K10 ["InternalFeatures"]
       34 LOADK                            R4 K11 ["Title"]
       35 NAMECALL                         R1 R1 K7 ["getText"]
       37 CALL                             R1 3 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K3 ["InternalSettings"]
       42 GETUPVAL                         R1 0
       43 LOADK                            R3 K12 ["Skills"]
       44 LOADK                            R4 K4 ["ManageSkills"]
       45 NAMECALL                         R1 R1 K7 ["getText"]
       47 CALL                             R1 3 1
       48 SETTABLEKS                       R1 R0 K4 ["ManageSkills"]
       50 RETURN                           R0 1

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
      218 GETTABLEKS                       R14 R0 K38 ["showSkills"]
      220 JUMPIFNOT                        R14 ; [+46]
      221 GETUPVAL                         R14 14
      222 GETUPVAL                         R15 16
      223 DUPTABLE                         R16 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      224 GETTABLEKS                       R17 R11 K39 ["ManageSkills"]
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
      265 SETTABLEKS                       R14 R12 K40 ["ManageSkillsButton"]
      267 GETTABLEKS                       R14 R0 K41 ["showInternalSettings"]
      269 JUMPIFNOT                        R14 ; [+46]
      270 GETUPVAL                         R14 14
      271 GETUPVAL                         R15 16
      272 DUPTABLE                         R16 K23 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "onActivated"}]
      273 GETTABLEKS                       R17 R11 K42 ["InternalSettings"]
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
      308 NEWCLOSURE                       R17 P5
      309 CAPTURE                          VAL R7
      310 CAPTURE                          VAL R0
      311 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      313 CALL                             R14 2 1
      314 SETTABLEKS                       R14 R12 K43 ["InternalSettingsButton"]
      316 GETUPVAL                         R14 8
      317 CALL                             R14 0 1
      318 JUMPIF                           R14 ; [+45]
      319 GETUPVAL                         R14 14
      320 GETUPVAL                         R15 16
      321 DUPTABLE                         R16 K45 [{"text", "size", "variant", "fillBehavior", "LayoutOrder", "isDisabled", "onActivated"}]
      322 GETTABLEKS                       R17 R11 K46 ["ClearConversation"]
      324 SETTABLEKS                       R17 R16 K18 ["text"]
      326 GETUPVAL                         R17 0
      327 GETTABLEKS                       R17 R17 K25 ["Enums"]
      329 GETTABLEKS                       R17 R17 K26 ["ButtonSize"]
      331 GETTABLEKS                       R17 R17 K27 ["XSmall"]
      333 SETTABLEKS                       R17 R16 K19 ["size"]
      335 GETUPVAL                         R17 0
      336 GETTABLEKS                       R17 R17 K25 ["Enums"]
      338 GETTABLEKS                       R17 R17 K28 ["ButtonVariant"]
      340 GETTABLEKS                       R17 R17 K29 ["Text"]
      342 SETTABLEKS                       R17 R16 K20 ["variant"]
      344 GETUPVAL                         R17 0
      345 GETTABLEKS                       R17 R17 K25 ["Enums"]
      347 GETTABLEKS                       R17 R17 K30 ["FillBehavior"]
      349 GETTABLEKS                       R17 R17 K31 ["Fill"]
      351 SETTABLEKS                       R17 R16 K21 ["fillBehavior"]
      353 MOVE                             R17 R13
      354 CALL                             R17 0 1
      355 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      357 SETTABLEKS                       R4 R16 K44 ["isDisabled"]
      359 SETTABLEKS                       R9 R16 K22 ["onActivated"]
      361 CALL                             R14 2 1
      362 SETTABLEKS                       R14 R12 K47 ["ClearConversationButton"]
      364 GETUPVAL                         R14 1
      365 GETTABLEKS                       R14 R14 K48 ["useRef"]
      367 LOADNIL                          R15
      368 CALL                             R14 1 1
      369 GETUPVAL                         R15 1
      370 GETTABLEKS                       R15 R15 K48 ["useRef"]
      372 LOADNIL                          R16
      373 CALL                             R15 1 1
      374 GETUPVAL                         R16 1
      375 GETTABLEKS                       R16 R16 K49 ["useEffect"]
      377 NEWCLOSURE                       R17 P6
      378 CAPTURE                          VAL R6
      379 CAPTURE                          VAL R14
      380 CAPTURE                          VAL R7
      381 NEWTABLE                         R18 0 1
      383 MOVE                             R19 R6
      384 SETLIST                          R18 R19 1 [1]
      386 CALL                             R16 2 0
      387 GETUPVAL                         R16 1
      388 GETTABLEKS                       R16 R16 K49 ["useEffect"]
      390 NEWCLOSURE                       R17 P7
      391 CAPTURE                          VAL R15
      392 NEWTABLE                         R18 0 1
      394 GETTABLEKS                       R19 R15 K50 ["current"]
      396 SETLIST                          R18 R19 1 [1]
      398 CALL                             R16 2 0
      399 GETUPVAL                         R16 1
      400 GETTABLEKS                       R16 R16 K51 ["useCallback"]
      402 NEWCLOSURE                       R17 P8
      403 CAPTURE                          VAL R6
      404 CAPTURE                          VAL R7
      405 CAPTURE                          VAL R14
      406 CAPTURE                          UPVAL U18
      407 NEWTABLE                         R18 0 1
      409 MOVE                             R19 R6
      410 SETLIST                          R18 R19 1 [1]
      412 CALL                             R16 2 1
      413 GETUPVAL                         R17 14
      414 GETUPVAL                         R18 19
      415 GETTABLEKS                       R18 R18 K52 ["Root"]
      417 DUPTABLE                         R19 K54 [{"isOpen"}]
      418 SETTABLEKS                       R6 R19 K53 ["isOpen"]
      420 DUPTABLE                         R20 K57 [{"SettingsAnchor", "Content"}]
      421 GETUPVAL                         R21 14
      422 GETUPVAL                         R22 19
      423 GETTABLEKS                       R22 R22 K58 ["Anchor"]
      425 DUPTABLE                         R23 K60 [{"LayoutOrder", "ref"}]
      426 GETTABLEKS                       R24 R0 K12 ["LayoutOrder"]
      428 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      430 SETTABLEKS                       R14 R23 K59 ["ref"]
      432 DUPTABLE                         R24 K62 [{"Button"}]
      433 GETUPVAL                         R26 20
      434 CALL                             R26 0 1
      435 JUMPIFNOT                        R26 ; [+41]
      436 GETUPVAL                         R25 14
      437 GETUPVAL                         R26 21
      438 DUPTABLE                         R27 K65 [{"icon", "size", "variant", "onActivated", "testId"}]
      439 GETUPVAL                         R28 0
      440 GETTABLEKS                       R28 R28 K25 ["Enums"]
      442 GETTABLEKS                       R28 R28 K66 ["IconName"]
      444 GETTABLEKS                       R28 R28 K67 ["ThreeDotsHorizontal"]
      446 SETTABLEKS                       R28 R27 K63 ["icon"]
      448 GETUPVAL                         R28 0
      449 GETTABLEKS                       R28 R28 K25 ["Enums"]
      451 GETTABLEKS                       R28 R28 K68 ["InputSize"]
      453 GETTABLEKS                       R28 R28 K27 ["XSmall"]
      455 SETTABLEKS                       R28 R27 K19 ["size"]
      457 GETUPVAL                         R28 0
      458 GETTABLEKS                       R28 R28 K25 ["Enums"]
      460 GETTABLEKS                       R28 R28 K28 ["ButtonVariant"]
      462 GETTABLEKS                       R28 R28 K69 ["Utility"]
      464 SETTABLEKS                       R28 R27 K20 ["variant"]
      466 SETTABLEKS                       R16 R27 K22 ["onActivated"]
      468 GETUPVAL                         R28 22
      469 GETTABLEKS                       R28 R28 K70 ["Header"]
      471 GETTABLEKS                       R28 R28 K71 ["SettingsButton"]
      473 SETTABLEKS                       R28 R27 K64 ["testId"]
      475 CALL                             R25 2 1
      476 JUMP                             ; [+22]
      477 GETUPVAL                         R25 14
      478 GETUPVAL                         R26 23
      479 DUPTABLE                         R27 K73 [{"icon", "tag", "iconTag", "testId", "onActivated"}]
      480 LOADK                            R28 K74 ["icons/actions/overflow"]
      481 SETTABLEKS                       R28 R27 K63 ["icon"]
      483 LOADK                            R28 K75 ["size-800-800 radius-medium bg-action-link align-x-center align-y-center"]
      484 SETTABLEKS                       R28 R27 K11 ["tag"]
      486 LOADK                            R28 K76 ["size-400-400 content-emphasis"]
      487 SETTABLEKS                       R28 R27 K72 ["iconTag"]
      489 GETUPVAL                         R28 22
      490 GETTABLEKS                       R28 R28 K70 ["Header"]
      492 GETTABLEKS                       R28 R28 K71 ["SettingsButton"]
      494 SETTABLEKS                       R28 R27 K64 ["testId"]
      496 SETTABLEKS                       R16 R27 K22 ["onActivated"]
      498 CALL                             R25 2 1
      499 SETTABLEKS                       R25 R24 K61 ["Button"]
      501 CALL                             R21 3 1
      502 SETTABLEKS                       R21 R20 K55 ["SettingsAnchor"]
      504 GETUPVAL                         R21 14
      505 GETUPVAL                         R22 19
      506 GETTABLEKS                       R22 R22 K56 ["Content"]
      508 DUPTABLE                         R23 K81 [{"side", "align", "hasArrow", "onPressedOutside"}]
      509 DUPTABLE                         R24 K84 [{"position", "offset"}]
      510 GETUPVAL                         R25 0
      511 GETTABLEKS                       R25 R25 K25 ["Enums"]
      513 GETTABLEKS                       R25 R25 K85 ["PopoverSide"]
      515 GETTABLEKS                       R25 R25 K86 ["Bottom"]
      517 SETTABLEKS                       R25 R24 K82 ["position"]
      519 GETTABLEKS                       R25 R1 K87 ["Gap"]
      521 GETTABLEKS                       R25 R25 K27 ["XSmall"]
      523 SETTABLEKS                       R25 R24 K83 ["offset"]
      525 SETTABLEKS                       R24 R23 K77 ["side"]
      527 GETUPVAL                         R24 0
      528 GETTABLEKS                       R24 R24 K25 ["Enums"]
      530 GETTABLEKS                       R24 R24 K88 ["PopoverAlign"]
      532 GETTABLEKS                       R24 R24 K89 ["Start"]
      534 SETTABLEKS                       R24 R23 K78 ["align"]
      536 LOADB                            R24 0
      537 SETTABLEKS                       R24 R23 K79 ["hasArrow"]
      539 NEWCLOSURE                       R24 P9
      540 CAPTURE                          VAL R7
      541 SETTABLEKS                       R24 R23 K80 ["onPressedOutside"]
      543 DUPTABLE                         R24 K91 [{"SettingsContent"}]
      544 GETUPVAL                         R25 14
      545 GETUPVAL                         R26 15
      546 DUPTABLE                         R27 K93 [{"tag", "ref", "testId", "sizeConstraint"}]
      547 LOADK                            R28 K94 ["col auto-xy radius-medium padding-small bg-surface-100 gap-small align-x-left"]
      548 SETTABLEKS                       R28 R27 K11 ["tag"]
      550 SETTABLEKS                       R15 R27 K59 ["ref"]
      552 GETUPVAL                         R28 22
      553 GETTABLEKS                       R28 R28 K70 ["Header"]
      555 GETTABLEKS                       R28 R28 K90 ["SettingsContent"]
      557 SETTABLEKS                       R28 R27 K64 ["testId"]
      559 DUPTABLE                         R28 K96 [{"MinSize"}]
      560 GETIMPORT                        R29 K99 [Vector2.new]
      562 LOADN                            R30 150
      563 LOADN                            R31 0
      564 CALL                             R29 2 1
      565 SETTABLEKS                       R29 R28 K95 ["MinSize"]
      567 SETTABLEKS                       R28 R27 K92 ["sizeConstraint"]
      569 MOVE                             R28 R12
      570 CALL                             R25 3 1
      571 SETTABLEKS                       R25 R24 K90 ["SettingsContent"]
      573 CALL                             R21 3 1
      574 SETTABLEKS                       R21 R20 K56 ["Content"]
      576 CALL                             R17 3 -1
      577 RETURN                           R17 -1

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
       38 JUMPIF                           R4 ; [+18]
       39 GETUPVAL                         R7 4
       40 GETUPVAL                         R8 5
       41 DUPTABLE                         R9 K10 [{"tag", "Text", "LayoutOrder"}]
       42 LOADK                            R10 K11 ["auto-xy text-caption-small content-muted"]
       43 SETTABLEKS                       R10 R9 K7 ["tag"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K12 ["getVersion"]
       48 CALL                             R10 0 1
       49 SETTABLEKS                       R10 R9 K8 ["Text"]
       51 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       53 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       55 CALL                             R7 2 -1
       56 RETURN                           R7 -1
       57 GETUPVAL                         R7 6
       58 CALL                             R7 0 1
       59 GETUPVAL                         R8 4
       60 GETUPVAL                         R9 7
       61 GETTABLEKS                       R9 R9 K13 ["Root"]
       63 DUPTABLE                         R10 K15 [{"isOpen"}]
       64 SETTABLEKS                       R2 R10 K14 ["isOpen"]
       66 DUPTABLE                         R11 K18 [{"SettingsAnchor", "Content"}]
       67 GETUPVAL                         R12 4
       68 GETUPVAL                         R13 7
       69 GETTABLEKS                       R13 R13 K19 ["Anchor"]
       71 DUPTABLE                         R14 K20 [{"LayoutOrder"}]
       72 GETTABLEKS                       R15 R0 K9 ["LayoutOrder"]
       74 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       76 DUPTABLE                         R15 K22 [{"Background"}]
       77 GETUPVAL                         R16 4
       78 GETUPVAL                         R17 8
       79 DUPTABLE                         R18 K24 [{"tag", "onStateChanged", "LayoutOrder"}]
       80 LOADK                            R19 K25 ["row auto-xy radius-medium padding-xsmall gap-xsmall align-x-center align-y-center"]
       81 SETTABLEKS                       R19 R18 K7 ["tag"]
       83 NEWCLOSURE                       R19 P2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U0
       86 SETTABLEKS                       R19 R18 K23 ["onStateChanged"]
       88 MOVE                             R19 R7
       89 CALL                             R19 0 1
       90 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
       92 DUPTABLE                         R19 K28 [{"Icon", "Version"}]
       93 GETUPVAL                         R20 4
       94 GETUPVAL                         R21 9
       95 DUPTABLE                         R22 K33 [{"name", "style", "size", "LayoutOrder", "testId"}]
       96 GETUPVAL                         R23 0
       97 GETTABLEKS                       R23 R23 K34 ["Enums"]
       99 GETTABLEKS                       R23 R23 K35 ["IconName"]
      101 GETTABLEKS                       R23 R23 K36 ["TriangleExclamation"]
      103 SETTABLEKS                       R23 R22 K29 ["name"]
      105 GETTABLEKS                       R23 R1 K37 ["Color"]
      107 GETTABLEKS                       R23 R23 K38 ["System"]
      109 GETTABLEKS                       R23 R23 K39 ["Warning"]
      111 SETTABLEKS                       R23 R22 K30 ["style"]
      113 GETUPVAL                         R23 0
      114 GETTABLEKS                       R23 R23 K34 ["Enums"]
      116 GETTABLEKS                       R23 R23 K40 ["IconSize"]
      118 GETTABLEKS                       R23 R23 K41 ["Medium"]
      120 SETTABLEKS                       R23 R22 K31 ["size"]
      122 MOVE                             R23 R7
      123 CALL                             R23 0 1
      124 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      126 GETUPVAL                         R23 10
      127 GETTABLEKS                       R23 R23 K42 ["Header"]
      129 GETTABLEKS                       R23 R23 K43 ["VersionMismatchIcon"]
      131 SETTABLEKS                       R23 R22 K32 ["testId"]
      133 CALL                             R20 2 1
      134 SETTABLEKS                       R20 R19 K26 ["Icon"]
      136 GETUPVAL                         R20 4
      137 GETUPVAL                         R21 5
      138 DUPTABLE                         R22 K10 [{"tag", "Text", "LayoutOrder"}]
      139 LOADK                            R23 K44 ["auto-xy text-caption-small content-system-warning"]
      140 SETTABLEKS                       R23 R22 K7 ["tag"]
      142 GETUPVAL                         R23 2
      143 GETTABLEKS                       R23 R23 K12 ["getVersion"]
      145 CALL                             R23 0 1
      146 SETTABLEKS                       R23 R22 K8 ["Text"]
      148 MOVE                             R23 R7
      149 CALL                             R23 0 1
      150 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K27 ["Version"]
      155 CALL                             R16 3 1
      156 SETTABLEKS                       R16 R15 K21 ["Background"]
      158 CALL                             R12 3 1
      159 SETTABLEKS                       R12 R11 K16 ["SettingsAnchor"]
      161 GETUPVAL                         R12 4
      162 GETUPVAL                         R13 7
      163 GETTABLEKS                       R13 R13 K17 ["Content"]
      165 DUPTABLE                         R14 K49 [{"side", "align", "backgroundStyle", "hasArrow"}]
      166 DUPTABLE                         R15 K52 [{"position", "offset"}]
      167 GETUPVAL                         R16 0
      168 GETTABLEKS                       R16 R16 K34 ["Enums"]
      170 GETTABLEKS                       R16 R16 K53 ["PopoverSide"]
      172 GETTABLEKS                       R16 R16 K54 ["Bottom"]
      174 SETTABLEKS                       R16 R15 K50 ["position"]
      176 GETTABLEKS                       R16 R1 K55 ["Gap"]
      178 GETTABLEKS                       R16 R16 K56 ["XSmall"]
      180 SETTABLEKS                       R16 R15 K51 ["offset"]
      182 SETTABLEKS                       R15 R14 K45 ["side"]
      184 GETUPVAL                         R15 0
      185 GETTABLEKS                       R15 R15 K34 ["Enums"]
      187 GETTABLEKS                       R15 R15 K57 ["PopoverAlign"]
      189 GETTABLEKS                       R15 R15 K58 ["Center"]
      191 SETTABLEKS                       R15 R14 K46 ["align"]
      193 GETTABLEKS                       R15 R1 K37 ["Color"]
      195 GETTABLEKS                       R15 R15 K59 ["Surface"]
      197 GETTABLEKS                       R15 R15 K60 ["Surface_300"]
      199 SETTABLEKS                       R15 R14 K47 ["backgroundStyle"]
      201 LOADB                            R15 0
      202 SETTABLEKS                       R15 R14 K48 ["hasArrow"]
      204 DUPTABLE                         R15 K61 [{"Text"}]
      205 GETUPVAL                         R16 4
      206 GETUPVAL                         R17 5
      207 DUPTABLE                         R18 K10 [{"tag", "Text", "LayoutOrder"}]
      208 LOADK                            R19 K62 ["auto-xy padding-xsmall content-warning text-caption-medium text-align-x-center text-wrap"]
      209 SETTABLEKS                       R19 R18 K7 ["tag"]
      211 GETTABLEKS                       R19 R6 K63 ["VersionMismatchWarning"]
      213 SETTABLEKS                       R19 R18 K8 ["Text"]
      215 MOVE                             R19 R7
      216 CALL                             R19 0 1
      217 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      219 CALL                             R16 2 1
      220 SETTABLEKS                       R16 R15 K8 ["Text"]
      222 CALL                             R12 3 1
      223 SETTABLEKS                       R12 R11 K17 ["Content"]
      225 CALL                             R8 3 -1
      226 RETURN                           R8 -1

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
       27 DUPTABLE                         R9 K6 [{"tag", "LayoutOrder"}]
       28 NEWTABLE                         R10 4 0
       30 LOADB                            R11 1
       31 SETTABLEKS                       R11 R10 K7 ["row size-full-0 auto-y padding-small gap-xsmall"]
       33 GETUPVAL                         R12 8
       34 CALL                             R12 0 1
       35 NOT                              R11 R12
       36 SETTABLEKS                       R11 R10 K8 ["align-x-right"]
       38 LOADB                            R11 1
       39 SETTABLEKS                       R11 R10 K9 ["align-y-center"]
       41 SETTABLEKS                       R10 R9 K4 ["tag"]
       43 GETTABLEKS                       R10 R0 K5 ["LayoutOrder"]
       45 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       47 DUPTABLE                         R10 K15 [{"FillArea", "Version", "Expand", "Settings", "DialogWidget"}]
       48 GETUPVAL                         R12 8
       49 CALL                             R12 0 1
       50 JUMPIFNOT                        R12 ; [+23]
       51 GETUPVAL                         R11 6
       52 GETUPVAL                         R12 7
       53 DUPTABLE                         R13 K6 [{"tag", "LayoutOrder"}]
       54 LOADK                            R14 K16 ["fill auto-y align-x-left align-y-center"]
       55 SETTABLEKS                       R14 R13 K4 ["tag"]
       57 MOVE                             R14 R1
       58 CALL                             R14 0 1
       59 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       61 DUPTABLE                         R14 K18 [{"ToggleThreadsMenuButton"}]
       62 GETUPVAL                         R15 6
       63 GETUPVAL                         R16 9
       64 DUPTABLE                         R17 K19 [{"LayoutOrder"}]
       65 MOVE                             R18 R1
       66 CALL                             R18 0 1
       67 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
       69 CALL                             R15 2 1
       70 SETTABLEKS                       R15 R14 K17 ["ToggleThreadsMenuButton"]
       72 CALL                             R11 3 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R11
       75 SETTABLEKS                       R11 R10 K10 ["FillArea"]
       77 GETUPVAL                         R12 10
       78 CALL                             R12 0 1
       79 JUMPIFNOT                        R12 ; [+9]
       80 GETUPVAL                         R11 6
       81 GETUPVAL                         R12 11
       82 DUPTABLE                         R13 K19 [{"LayoutOrder"}]
       83 MOVE                             R14 R1
       84 CALL                             R14 0 1
       85 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       87 CALL                             R11 2 1
       88 JUMP                             ; [+17]
       89 GETUPVAL                         R11 6
       90 GETUPVAL                         R12 12
       91 DUPTABLE                         R13 K21 [{"tag", "Text", "LayoutOrder"}]
       92 LOADK                            R14 K22 ["auto-xy text-caption-small content-muted"]
       93 SETTABLEKS                       R14 R13 K4 ["tag"]
       95 GETUPVAL                         R14 13
       96 GETTABLEKS                       R14 R14 K23 ["getVersion"]
       98 CALL                             R14 0 1
       99 SETTABLEKS                       R14 R13 K20 ["Text"]
      101 MOVE                             R14 R1
      102 CALL                             R14 0 1
      103 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K11 ["Version"]
      108 GETUPVAL                         R11 6
      109 GETUPVAL                         R12 14
      110 DUPTABLE                         R13 K19 [{"LayoutOrder"}]
      111 MOVE                             R14 R1
      112 CALL                             R14 0 1
      113 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K12 ["Expand"]
      118 GETUPVAL                         R11 6
      119 GETUPVAL                         R12 15
      120 DUPTABLE                         R13 K25 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings", "showSkills"}]
      121 MOVE                             R14 R1
      122 CALL                             R14 0 1
      123 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      125 SETTABLEKS                       R3 R13 K0 ["showIntegrations"]
      127 SETTABLEKS                       R4 R13 K1 ["showApiKeys"]
      129 SETTABLEKS                       R6 R13 K24 ["showInternalSettings"]
      131 SETTABLEKS                       R5 R13 K2 ["showSkills"]
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K13 ["Settings"]
      136 GETTABLEKS                       R11 R2 K26 ["root"]
      138 SETTABLEKS                       R11 R10 K14 ["DialogWidget"]
      140 CALL                             R7 3 -1
      141 RETURN                           R7 -1

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
       85 GETTABLEKS                       R12 R0 K15 ["Util"]
       87 GETTABLEKS                       R12 R12 K23 ["VersionResolver"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K25 ["useClearConversation"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K24 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K26 ["useEditContent"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K27 ["useGetThread"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K28 ["useSettingsDialog"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K29 ["Guest"]
      122 GETTABLEKS                       R17 R17 K30 ["Environment"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K31 ["Flags"]
      129 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantMultiEditExternalClient"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K31 ["Flags"]
      136 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantMultipleChatPersistence"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K31 ["Flags"]
      143 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantPrivilegedCodeExecution"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K31 ["Flags"]
      150 GETTABLEKS                       R21 R21 K35 ["FFlagAssistantUseBuilderIcons"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K31 ["Flags"]
      157 GETTABLEKS                       R22 R22 K36 ["FFlagAssistantUserSkills"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K31 ["Flags"]
      164 GETTABLEKS                       R23 R23 K37 ["FFlagAssistantVersionMismatchWarning"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K31 ["Flags"]
      171 GETTABLEKS                       R24 R24 K38 ["FFlagExternalMCPUI"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R25 R0 K31 ["Flags"]
      178 GETTABLEKS                       R25 R25 K39 ["FFlagMCPAssistantManagementMenu"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R26 R0 K31 ["Flags"]
      185 GETTABLEKS                       R26 R26 K40 ["FIntAssistantMinPopoverHeight"]
      187 CALL                             R25 1 1
      188 GETTABLEKS                       R26 R2 K41 ["Button"]
      190 GETTABLEKS                       R27 R2 K42 ["Icon"]
      192 GETTABLEKS                       R28 R2 K43 ["IconButton"]
      194 GETTABLEKS                       R29 R2 K44 ["Image"]
      196 GETTABLEKS                       R30 R2 K45 ["Popover"]
      198 GETTABLEKS                       R31 R2 K46 ["Text"]
      200 GETTABLEKS                       R32 R2 K47 ["View"]
      202 GETTABLEKS                       R33 R6 K48 ["createNextOrder"]
      204 GETTABLEKS                       R34 R5 K49 ["createElement"]
      206 GETTABLEKS                       R35 R3 K50 ["InputDisabledReasons"]
      208 GETTABLEKS                       R36 R10 K51 ["DEFAULT_STUDIO_MODEL"]
      210 DUPCLOSURE                       R37 K52 [PROTO_0]
      211 CAPTURE                          VAL R25
      212 DUPTABLE                         R38 K55 [{"Dark", "Light"}]
      213 LOADK                            R39 K56 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      214 SETTABLEKS                       R39 R38 K53 ["Dark"]
      216 LOADK                            R39 K57 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      217 SETTABLEKS                       R39 R38 K54 ["Light"]
      219 DUPCLOSURE                       R39 K58 [PROTO_4]
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R34
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R38
      230 CAPTURE                          VAL R1
      231 DUPCLOSURE                       R40 K59 [PROTO_17]
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R35
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R17
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R36
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R34
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R31
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R30
      252 CAPTURE                          VAL R20
      253 CAPTURE                          VAL R28
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R1
      256 DUPCLOSURE                       R41 K60 [PROTO_23]
      257 CAPTURE                          VAL R2
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R11
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R34
      262 CAPTURE                          VAL R31
      263 CAPTURE                          VAL R33
      264 CAPTURE                          VAL R30
      265 CAPTURE                          VAL R32
      266 CAPTURE                          VAL R27
      267 CAPTURE                          VAL R7
      268 DUPCLOSURE                       R42 K61 [PROTO_25]
      269 CAPTURE                          VAL R33
      270 CAPTURE                          VAL R15
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R19
      274 CAPTURE                          VAL R16
      275 CAPTURE                          VAL R34
      276 CAPTURE                          VAL R32
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R8
      279 CAPTURE                          VAL R22
      280 CAPTURE                          VAL R41
      281 CAPTURE                          VAL R31
      282 CAPTURE                          VAL R11
      283 CAPTURE                          VAL R39
      284 CAPTURE                          VAL R40
      285 RETURN                           R42 1
