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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["printToStudioLogAsync"]
        6 LOADK                            R2 K2 ["AssistantVersion: %*"]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K1 [pcall]
       10 DUPCLOSURE                       R1 K2 [PROTO_18]
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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
       11 CAPTURE                          UPVAL U6
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R2 K1 ["showIntegrations"]
       17 GETTABLEKS                       R4 R2 K2 ["showApiKeys"]
       19 GETUPVAL                         R6 7
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R5 R2 K3 ["showSkills"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 9
       37 GETUPVAL                         R8 10
       38 DUPTABLE                         R9 K7 [{"tag", "LayoutOrder"}]
       39 NEWTABLE                         R10 4 0
       41 LOADB                            R11 1
       42 SETTABLEKS                       R11 R10 K8 ["row size-full-0 auto-y padding-small gap-xsmall"]
       44 GETUPVAL                         R12 11
       45 CALL                             R12 0 1
       46 NOT                              R11 R12
       47 SETTABLEKS                       R11 R10 K9 ["align-x-right"]
       49 GETUPVAL                         R11 11
       50 CALL                             R11 0 1
       51 JUMPIF                           R11 ; [+2]
       52 GETUPVAL                         R11 12
       53 CALL                             R11 0 1
       54 SETTABLEKS                       R11 R10 K10 ["align-y-center"]
       56 SETTABLEKS                       R10 R9 K5 ["tag"]
       58 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       60 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       62 DUPTABLE                         R10 K16 [{"FillArea", "Version", "Expand", "Settings", "DialogWidget"}]
       63 GETUPVAL                         R12 11
       64 CALL                             R12 0 1
       65 JUMPIFNOT                        R12 ; [+23]
       66 GETUPVAL                         R11 9
       67 GETUPVAL                         R12 10
       68 DUPTABLE                         R13 K7 [{"tag", "LayoutOrder"}]
       69 LOADK                            R14 K17 ["fill auto-y align-x-left align-y-center"]
       70 SETTABLEKS                       R14 R13 K5 ["tag"]
       72 MOVE                             R14 R1
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       76 DUPTABLE                         R14 K19 [{"ToggleThreadsMenuButton"}]
       77 GETUPVAL                         R15 9
       78 GETUPVAL                         R16 13
       79 DUPTABLE                         R17 K20 [{"LayoutOrder"}]
       80 MOVE                             R18 R1
       81 CALL                             R18 0 1
       82 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K18 ["ToggleThreadsMenuButton"]
       87 CALL                             R11 3 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R11
       90 SETTABLEKS                       R11 R10 K11 ["FillArea"]
       92 GETUPVAL                         R12 12
       93 CALL                             R12 0 1
       94 JUMPIFNOT                        R12 ; [+15]
       95 GETUPVAL                         R11 9
       96 GETUPVAL                         R12 14
       97 DUPTABLE                         R13 K22 [{"tag", "Text", "LayoutOrder"}]
       98 LOADK                            R14 K23 ["auto-xy text-caption-small content-muted"]
       99 SETTABLEKS                       R14 R13 K5 ["tag"]
      101 GETUPVAL                         R14 6
      102 SETTABLEKS                       R14 R13 K21 ["Text"]
      104 MOVE                             R14 R1
      105 CALL                             R14 0 1
      106 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      108 CALL                             R11 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R11
      111 SETTABLEKS                       R11 R10 K12 ["Version"]
      113 GETUPVAL                         R11 9
      114 GETUPVAL                         R12 15
      115 DUPTABLE                         R13 K20 [{"LayoutOrder"}]
      116 MOVE                             R14 R1
      117 CALL                             R14 0 1
      118 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K13 ["Expand"]
      123 GETUPVAL                         R11 9
      124 GETUPVAL                         R12 16
      125 DUPTABLE                         R13 K25 [{"LayoutOrder", "showIntegrations", "showApiKeys", "showInternalSettings", "showSkills"}]
      126 MOVE                             R14 R1
      127 CALL                             R14 0 1
      128 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      130 SETTABLEKS                       R3 R13 K1 ["showIntegrations"]
      132 SETTABLEKS                       R4 R13 K2 ["showApiKeys"]
      134 SETTABLEKS                       R6 R13 K24 ["showInternalSettings"]
      136 SETTABLEKS                       R5 R13 K3 ["showSkills"]
      138 CALL                             R11 2 1
      139 SETTABLEKS                       R11 R10 K14 ["Settings"]
      141 GETTABLEKS                       R11 R2 K26 ["root"]
      143 SETTABLEKS                       R11 R10 K15 ["DialogWidget"]
      145 CALL                             R7 3 -1
      146 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Version"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["CustomIconButton"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["InputStateContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K7 ["Components"]
       39 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["LLMProviderSelectionContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K9 ["Parent"]
       55 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K7 ["Components"]
       69 GETTABLEKS                       R10 R10 K18 ["ThreadsWindow"]
       71 GETTABLEKS                       R10 R10 K19 ["ToggleThreadsMenuButton"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Resources"]
       78 GETTABLEKS                       R11 R11 K21 ["Localization"]
       80 GETTABLEKS                       R11 R11 K22 ["Translator"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K25 ["useClearConversation"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K26 ["useEditContent"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K27 ["useGetThread"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K28 ["useSettingsDialog"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K29 ["Guest"]
      120 GETTABLEKS                       R17 R17 K30 ["Environment"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K31 ["Flags"]
      127 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantMultiEditExternalClient"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K31 ["Flags"]
      134 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantMultipleChatPersistence"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K31 ["Flags"]
      141 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantPrivilegedCodeExecution"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K31 ["Flags"]
      148 GETTABLEKS                       R21 R21 K35 ["FFlagAssistantShowVersion"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K31 ["Flags"]
      155 GETTABLEKS                       R22 R22 K36 ["FFlagAssistantUseBuilderIcons"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K31 ["Flags"]
      162 GETTABLEKS                       R23 R23 K37 ["FFlagAssistantUserSkills"]
      164 CALL                             R22 1 1
      165 GETIMPORT                        R23 K5 [require]
      167 GETTABLEKS                       R24 R0 K31 ["Flags"]
      169 GETTABLEKS                       R24 R24 K38 ["FFlagExternalMCPUI"]
      171 CALL                             R23 1 1
      172 GETIMPORT                        R24 K5 [require]
      174 GETTABLEKS                       R25 R0 K31 ["Flags"]
      176 GETTABLEKS                       R25 R25 K39 ["FFlagMCPAssistantManagementMenu"]
      178 CALL                             R24 1 1
      179 GETIMPORT                        R25 K5 [require]
      181 GETTABLEKS                       R26 R0 K31 ["Flags"]
      183 GETTABLEKS                       R26 R26 K40 ["FFlagPrimGenEnableStatusLog"]
      185 CALL                             R25 1 1
      186 GETIMPORT                        R26 K5 [require]
      188 GETTABLEKS                       R27 R0 K31 ["Flags"]
      190 GETTABLEKS                       R27 R27 K41 ["FIntAssistantMinPopoverHeight"]
      192 CALL                             R26 1 1
      193 GETTABLEKS                       R27 R3 K42 ["Button"]
      195 GETTABLEKS                       R28 R3 K43 ["IconButton"]
      197 GETTABLEKS                       R29 R3 K44 ["Image"]
      199 GETTABLEKS                       R30 R3 K45 ["Popover"]
      201 GETTABLEKS                       R31 R3 K46 ["Text"]
      203 GETTABLEKS                       R32 R3 K47 ["View"]
      205 GETTABLEKS                       R33 R7 K48 ["createNextOrder"]
      207 GETTABLEKS                       R34 R6 K49 ["createElement"]
      209 GETTABLEKS                       R35 R4 K50 ["InputDisabledReasons"]
      211 GETTABLEKS                       R36 R11 K51 ["DEFAULT_STUDIO_MODEL"]
      213 DUPCLOSURE                       R37 K52 [PROTO_0]
      214 CAPTURE                          VAL R26
      215 LOADB                            R38 0
      216 DUPTABLE                         R39 K55 [{"Dark", "Light"}]
      217 LOADK                            R40 K56 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/ExpandAll.png"]
      218 SETTABLEKS                       R40 R39 K53 ["Dark"]
      220 LOADK                            R40 K57 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Large/ExpandAll.png"]
      221 SETTABLEKS                       R40 R39 K54 ["Light"]
      223 DUPCLOSURE                       R40 K58 [PROTO_4]
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R34
      231 CAPTURE                          VAL R32
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R39
      234 CAPTURE                          VAL R2
      235 DUPCLOSURE                       R41 K59 [PROTO_17]
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R35
      240 CAPTURE                          VAL R24
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R36
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R33
      250 CAPTURE                          VAL R34
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R27
      253 CAPTURE                          VAL R31
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R28
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R2
      260 NEWCLOSURE                       R42 P3
      261 CAPTURE                          VAL R33
      262 CAPTURE                          VAL R15
      263 CAPTURE                          VAL R6
      264 CAPTURE                          REF R38
      265 CAPTURE                          VAL R25
      266 CAPTURE                          VAL R16
      267 CAPTURE                          VAL R1
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R34
      271 CAPTURE                          VAL R32
      272 CAPTURE                          VAL R18
      273 CAPTURE                          VAL R20
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R31
      276 CAPTURE                          VAL R40
      277 CAPTURE                          VAL R41
      278 CLOSEUPVALS                      R38
      279 RETURN                           R42 1
