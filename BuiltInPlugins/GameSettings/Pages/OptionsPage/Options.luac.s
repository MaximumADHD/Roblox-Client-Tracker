PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getScriptCollaborationEnabled"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["ScriptCollabEnabled"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getScriptCollaborationEnabledOnServer"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 SETTABLE                         R1 R0 R2
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getIsTeamCreateEnabled"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 SETTABLE                         R1 R0 R2
        6 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["game"]
        7 GETTABLEKS                       R5 R2 K1 ["Metadata"]
        9 GETTABLEKS                       R4 R5 K3 ["gameId"]
       11 GETTABLEKS                       R5 R1 K4 ["gameOptionsController"]
       13 NEWTABLE                         R6 0 3
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R3
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U0
       22 NEWCLOSURE                       R9 P2
       23 CAPTURE                          VAL R5
       24 CAPTURE                          UPVAL U1
       25 SETLIST                          R6 R7 3 [1]
       27 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["ScriptCollabEnabled"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setScriptCollaborationEnabled"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["game"]
        7 GETTABLEKS                       R4 R1 K3 ["gameOptionsController"]
        9 NEWTABLE                         R5 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R3
       15 SETLIST                          R5 R6 1 [1]
       17 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R4 R1 K0 ["Settings"]
        2 GETTABLEKS                       R3 R4 K1 ["Current"]
        4 GETTABLEKS                       R2 R3 K2 ["ScriptCollaborationEnabledOnServer"]
        6 DUPTABLE                         R3 K8 [{"ScriptCollabEnabled", "CurrentScriptCollabEnabled", "TeamCreateEnabled", "ScriptCollabEnabledOnServer", "GameId"}]
        7 MOVE                             R4 R0
        8 LOADK                            R5 K3 ["ScriptCollabEnabled"]
        9 CALL                             R4 1 1
       10 SETTABLEKS                       R4 R3 K3 ["ScriptCollabEnabled"]
       12 GETTABLEKS                       R6 R1 K0 ["Settings"]
       14 GETTABLEKS                       R5 R6 K1 ["Current"]
       16 GETTABLEKS                       R4 R5 K3 ["ScriptCollabEnabled"]
       18 SETTABLEKS                       R4 R3 K4 ["CurrentScriptCollabEnabled"]
       20 GETTABLEKS                       R7 R1 K0 ["Settings"]
       22 GETTABLEKS                       R6 R7 K1 ["Current"]
       24 GETTABLEKS                       R5 R6 K5 ["TeamCreateEnabled"]
       26 ORK                              R4 R5 K9 []
       27 SETTABLEKS                       R4 R3 K5 ["TeamCreateEnabled"]
       29 SETTABLEKS                       R2 R3 K6 ["ScriptCollabEnabledOnServer"]
       31 GETTABLEKS                       R5 R1 K10 ["Metadata"]
       33 GETTABLEKS                       R4 R5 K11 ["gameId"]
       35 SETTABLEKS                       R4 R3 K7 ["GameId"]
       37 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"ScriptCollabEnabledChanged", "dispatchShutdownAllServers"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K3 ["ScriptCollabEnabled"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["ScriptCollabEnabledChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R3 R2 K1 ["dispatchShutdownAllServers"]
       11 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ScriptCollabEnabledChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["ScriptCollabEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R1 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R2 R4 K1 ["GameId"]
        4 LOADK                            R3 K2 ["/server-management"]
        5 CONCAT                           R0 R1 R3
        6 JUMPIFNOT                        R0 ; [+14]
        7 FASTCALL1                        STRING_LEN R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K5 [string.len]
       11 CALL                             R1 1 1
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R2 R1 ; [+7]
       15 GETUPVAL                         R1 1
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K6 ["OpenBrowserWindow"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R1 K8 [error]
       23 LOADK                            R2 K9 ["Failed to open Creator Server Management page"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K4 [{"Size", "Title", "Header", "Buttons"}]
        1 GETIMPORT                        R1 K7 [Vector2.new]
        3 LOADN                            R2 87
        4 LOADN                            R3 145
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K8 ["General"]
       10 LOADK                            R4 K9 ["ShutdownDialogHeader"]
       11 NAMECALL                         R1 R1 K10 ["getText"]
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K1 ["Title"]
       16 GETUPVAL                         R1 0
       17 LOADK                            R3 K8 ["General"]
       18 LOADK                            R4 K11 ["ShutdownDialogBody"]
       19 NAMECALL                         R1 R1 K10 ["getText"]
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K2 ["Header"]
       24 NEWTABLE                         R1 0 2
       26 GETUPVAL                         R2 0
       27 LOADK                            R4 K8 ["General"]
       28 LOADK                            R5 K12 ["ReplyNo"]
       29 NAMECALL                         R2 R2 K10 ["getText"]
       31 CALL                             R2 3 1
       32 GETUPVAL                         R3 0
       33 LOADK                            R5 K8 ["General"]
       34 LOADK                            R6 K13 ["ReplyYes"]
       35 NAMECALL                         R3 R3 K10 ["getText"]
       37 CALL                             R3 3 -1
       38 SETLIST                          R1 R2 -1 [1]
       40 SETTABLEKS                       R1 R0 K3 ["Buttons"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R1 R2 K14 ["showDialog"]
       45 GETUPVAL                         R2 2
       46 MOVE                             R3 R0
       47 CALL                             R1 2 1
       48 NAMECALL                         R1 R1 K15 ["await"]
       50 CALL                             R1 1 1
       51 JUMPIFNOT                        R1 ; [+2]
       52 GETUPVAL                         R2 3
       53 CALL                             R2 0 0
       54 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 DUPTABLE                         R2 K4 [{"EnableScriptCollab", "RestartServers"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K5 ["createElement"]
        9 GETUPVAL                         R4 2
       10 DUPTABLE                         R5 K13 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "ShowWarning", "OnClick"}]
       11 LOADK                            R8 K14 ["General"]
       12 LOADK                            R9 K15 ["TitleScriptDraftsMode"]
       13 NAMECALL                         R6 R1 K16 ["getText"]
       15 CALL                             R6 3 1
       16 SETTABLEKS                       R6 R5 K6 ["Title"]
       18 GETUPVAL                         R6 3
       19 SETTABLEKS                       R6 R5 K7 ["Description"]
       21 GETUPVAL                         R6 4
       22 NAMECALL                         R6 R6 K17 ["getNextOrder"]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       27 GETUPVAL                         R7 5
       28 NOT                              R6 R7
       29 SETTABLEKS                       R6 R5 K9 ["Disabled"]
       31 GETTABLEKS                       R6 R0 K18 ["ScriptCollabEnabled"]
       33 SETTABLEKS                       R6 R5 K10 ["Selected"]
       35 GETUPVAL                         R6 6
       36 SETTABLEKS                       R6 R5 K11 ["ShowWarning"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R6 R5 K12 ["OnClick"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R2 K2 ["EnableScriptCollab"]
       45 GETUPVAL                         R4 7
       46 JUMPIFNOT                        R4 ; [+49]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R3 R4 K5 ["createElement"]
       50 GETUPVAL                         R4 8
       51 DUPTABLE                         R5 K19 [{"LayoutOrder", "Title"}]
       52 GETUPVAL                         R6 4
       53 NAMECALL                         R6 R6 K17 ["getNextOrder"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       58 LOADK                            R8 K14 ["General"]
       59 LOADK                            R9 K20 ["TitleRestartServers"]
       60 NAMECALL                         R6 R1 K16 ["getText"]
       62 CALL                             R6 3 1
       63 SETTABLEKS                       R6 R5 K6 ["Title"]
       65 DUPTABLE                         R6 K22 [{"LinkText"}]
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R7 R8 K5 ["createElement"]
       69 GETUPVAL                         R8 9
       70 DUPTABLE                         R9 K26 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U10
       74 SETTABLEKS                       R10 R9 K12 ["OnClick"]
       76 LOADK                            R12 K14 ["General"]
       77 LOADK                            R13 K27 ["ManageServersOnCreatorHubDeepLink"]
       78 NAMECALL                         R10 R1 K16 ["getText"]
       80 CALL                             R10 3 1
       81 SETTABLEKS                       R10 R9 K23 ["Text"]
       83 GETIMPORT                        R10 K30 [Enum.TextXAlignment.Left]
       85 SETTABLEKS                       R10 R9 K24 ["TextXAlignment"]
       87 GETIMPORT                        R10 K32 [Enum.TextYAlignment.Top]
       89 SETTABLEKS                       R10 R9 K25 ["TextYAlignment"]
       91 CALL                             R7 2 1
       92 SETTABLEKS                       R7 R6 K21 ["LinkText"]
       94 CALL                             R3 3 1
       95 JUMPIF                           R3 ; [+148]
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R3 R4 K5 ["createElement"]
       99 GETUPVAL                         R4 8
      100 DUPTABLE                         R5 K19 [{"LayoutOrder", "Title"}]
      101 GETUPVAL                         R6 4
      102 NAMECALL                         R6 R6 K17 ["getNextOrder"]
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      107 LOADK                            R8 K14 ["General"]
      108 LOADK                            R9 K33 ["TitleShutdownAllServers"]
      109 NAMECALL                         R6 R1 K16 ["getText"]
      111 CALL                             R6 3 1
      112 SETTABLEKS                       R6 R5 K6 ["Title"]
      114 DUPTABLE                         R6 K37 [{"VerticalLayout", "ShutdownButton", "ShutdownButtonDescription"}]
      115 GETUPVAL                         R8 1
      116 GETTABLEKS                       R7 R8 K5 ["createElement"]
      118 LOADK                            R8 K38 ["UIListLayout"]
      119 DUPTABLE                         R9 K42 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      120 GETIMPORT                        R10 K44 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R10 R9 K39 ["FillDirection"]
      124 GETIMPORT                        R10 K45 [Enum.HorizontalAlignment.Left]
      126 SETTABLEKS                       R10 R9 K40 ["HorizontalAlignment"]
      128 GETIMPORT                        R10 K46 [Enum.SortOrder.LayoutOrder]
      130 SETTABLEKS                       R10 R9 K41 ["SortOrder"]
      132 CALL                             R7 2 1
      133 SETTABLEKS                       R7 R6 K34 ["VerticalLayout"]
      135 GETUPVAL                         R8 1
      136 GETTABLEKS                       R7 R8 K5 ["createElement"]
      138 GETUPVAL                         R8 11
      139 DUPTABLE                         R9 K49 [{"Style", "Text", "Size", "LayoutOrder", "OnClick"}]
      140 LOADK                            R10 K50 ["GameSettingsButton"]
      141 SETTABLEKS                       R10 R9 K47 ["Style"]
      143 GETUPVAL                         R10 12
      144 SETTABLEKS                       R10 R9 K23 ["Text"]
      146 GETUPVAL                         R10 13
      147 SETTABLEKS                       R10 R9 K48 ["Size"]
      149 LOADN                            R10 1
      150 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      152 NEWCLOSURE                       R10 P2
      153 CAPTURE                          VAL R1
      154 CAPTURE                          UPVAL U14
      155 CAPTURE                          UPVAL U15
      156 CAPTURE                          UPVAL U16
      157 SETTABLEKS                       R10 R9 K12 ["OnClick"]
      159 NEWTABLE                         R10 0 1
      161 GETUPVAL                         R12 1
      162 GETTABLEKS                       R11 R12 K5 ["createElement"]
      164 GETUPVAL                         R12 17
      165 DUPTABLE                         R13 K52 [{"Cursor"}]
      166 LOADK                            R14 K53 ["PointingHand"]
      167 SETTABLEKS                       R14 R13 K51 ["Cursor"]
      169 CALL                             R11 2 -1
      170 SETLIST                          R10 R11 -1 [1]
      172 CALL                             R7 3 1
      173 SETTABLEKS                       R7 R6 K35 ["ShutdownButton"]
      175 GETUPVAL                         R8 1
      176 GETTABLEKS                       R7 R8 K5 ["createElement"]
      178 LOADK                            R8 K54 ["TextLabel"]
      179 GETUPVAL                         R11 18
      180 GETTABLEKS                       R10 R11 K55 ["Dictionary"]
      182 GETTABLEKS                       R9 R10 K56 ["join"]
      184 GETUPVAL                         R12 19
      185 GETTABLEKS                       R11 R12 K57 ["fontStyle"]
      187 GETTABLEKS                       R10 R11 K58 ["Subtext"]
      189 DUPTABLE                         R11 K61 [{"Size", "LayoutOrder", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped"}]
      190 GETIMPORT                        R12 K64 [UDim2.new]
      192 LOADN                            R13 1
      193 LOADN                            R14 0
      194 LOADN                            R15 0
      195 GETUPVAL                         R18 20
      196 GETTABLEKS                       R17 R18 K65 ["Y"]
      198 GETUPVAL                         R20 19
      199 GETTABLEKS                       R19 R20 K66 ["shutdownButton"]
      201 GETTABLEKS                       R18 R19 K67 ["PaddingY"]
      203 ADD                              R16 R17 R18
      204 CALL                             R12 4 1
      205 SETTABLEKS                       R12 R11 K48 ["Size"]
      207 LOADN                            R12 2
      208 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      210 LOADN                            R12 1
      211 SETTABLEKS                       R12 R11 K59 ["BackgroundTransparency"]
      213 GETUPVAL                         R13 21
      214 JUMPIFNOT                        R13 ; [+6]
      215 LOADK                            R14 K14 ["General"]
      216 LOADK                            R15 K68 ["StudioShutdownAllServicesDescExp"]
      217 NAMECALL                         R12 R1 K16 ["getText"]
      219 CALL                             R12 3 1
      220 JUMP                             ; [+5]
      221 LOADK                            R14 K14 ["General"]
      222 LOADK                            R15 K69 ["StudioShutdownAllServicesDesc"]
      223 NAMECALL                         R12 R1 K16 ["getText"]
      225 CALL                             R12 3 1
      226 SETTABLEKS                       R12 R11 K23 ["Text"]
      228 GETIMPORT                        R12 K71 [Enum.TextYAlignment.Center]
      230 SETTABLEKS                       R12 R11 K25 ["TextYAlignment"]
      232 GETIMPORT                        R12 K30 [Enum.TextXAlignment.Left]
      234 SETTABLEKS                       R12 R11 K24 ["TextXAlignment"]
      236 LOADB                            R12 1
      237 SETTABLEKS                       R12 R11 K60 ["TextWrapped"]
      239 CALL                             R9 2 -1
      240 CALL                             R7 -1 1
      241 SETTABLEKS                       R7 R6 K36 ["ShutdownButtonDescription"]
      243 CALL                             R3 3 1
      244 SETTABLEKS                       R3 R2 K3 ["RestartServers"]
      246 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Dialog"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 LOADK                            R7 K4 ["General"]
        9 LOADK                            R8 K5 ["ButtonShutdownAllServers"]
       10 NAMECALL                         R5 R4 K6 ["getText"]
       12 CALL                             R5 3 1
       13 GETIMPORT                        R6 K9 [Vector2.new]
       15 LOADK                            R7 K10 [∞]
       16 GETTABLEKS                       R9 R3 K11 ["button"]
       18 GETTABLEKS                       R8 R9 K12 ["height"]
       20 CALL                             R6 2 1
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R5
       23 GETTABLEKS                       R11 R3 K13 ["fontStyle"]
       25 GETTABLEKS                       R10 R11 K14 ["Header"]
       27 GETTABLEKS                       R9 R10 K15 ["TextSize"]
       29 GETTABLEKS                       R12 R3 K13 ["fontStyle"]
       31 GETTABLEKS                       R11 R12 K14 ["Header"]
       33 GETTABLEKS                       R10 R11 K16 ["Font"]
       35 MOVE                             R11 R6
       36 CALL                             R7 4 1
       37 GETTABLEKS                       R9 R7 K17 ["X"]
       39 GETTABLEKS                       R11 R3 K11 ["button"]
       41 GETTABLEKS                       R10 R11 K18 ["width"]
       43 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       45 GETIMPORT                        R8 K21 [math.max]
       47 CALL                             R8 2 1
       48 GETTABLEKS                       R11 R3 K11 ["button"]
       50 GETTABLEKS                       R10 R11 K12 ["height"]
       52 GETTABLEKS                       R11 R7 K22 ["Y"]
       54 SUB                              R9 R10 R11
       55 GETIMPORT                        R10 K24 [UDim2.new]
       57 LOADN                            R11 0
       58 MOVE                             R12 R8
       59 LOADN                            R13 0
       60 GETTABLEKS                       R15 R7 K22 ["Y"]
       62 ADD                              R14 R15 R9
       63 CALL                             R10 4 1
       64 GETTABLEKS                       R11 R1 K25 ["dispatchShutdownAllServers"]
       66 GETTABLEKS                       R13 R1 K27 ["TeamCreateEnabled"]
       68 ORK                              R12 R13 K26 [False]
       69 GETUPVAL                         R14 1
       70 GETTABLEKS                       R13 R14 K8 ["new"]
       72 CALL                             R13 0 1
       73 MOVE                             R14 R12
       74 JUMPIFNOT                        R14 ; [+8]
       75 GETTABLEKS                       R15 R1 K28 ["ScriptCollabEnabledOnServer"]
       77 GETTABLEKS                       R16 R1 K29 ["ScriptCollabEnabled"]
       79 JUMPIFNOTEQ                      R15 R16 ; [+2]
       81 LOADB                            R14 0 +1
       82 LOADB                            R14 1
       83 LOADNIL                          R15
       84 JUMPIF                           R12 ; [+7]
       85 LOADK                            R18 K4 ["General"]
       86 LOADK                            R19 K30 ["EnableTeamCreateForDraftsMode"]
       87 NAMECALL                         R16 R4 K6 ["getText"]
       89 CALL                             R16 3 1
       90 MOVE                             R15 R16
       91 JUMP                             ; [+14]
       92 JUMPIFNOT                        R14 ; [+7]
       93 LOADK                            R18 K4 ["General"]
       94 LOADK                            R19 K31 ["ServerRestartWarning"]
       95 NAMECALL                         R16 R4 K6 ["getText"]
       97 CALL                             R16 3 1
       98 MOVE                             R15 R16
       99 JUMP                             ; [+6]
      100 LOADK                            R18 K4 ["General"]
      101 LOADK                            R19 K32 ["ScriptDraftsMode"]
      102 NAMECALL                         R16 R4 K6 ["getText"]
      104 CALL                             R16 3 1
      105 MOVE                             R15 R16
      106 NEWCLOSURE                       R16 P0
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          REF R15
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R14
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          UPVAL U6
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R2
      122 CAPTURE                          UPVAL U9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          UPVAL U10
      125 CAPTURE                          UPVAL U11
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R7
      128 CAPTURE                          UPVAL U12
      129 GETUPVAL                         R18 2
      130 GETTABLEKS                       R17 R18 K33 ["createElement"]
      132 GETUPVAL                         R18 13
      133 DUPTABLE                         R19 K39 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
      134 GETUPVAL                         R20 14
      135 SETTABLEKS                       R20 R19 K34 ["SettingsLoadJobs"]
      137 GETUPVAL                         R20 15
      138 SETTABLEKS                       R20 R19 K35 ["SettingsSaveJobs"]
      140 LOADK                            R22 K4 ["General"]
      141 LOADK                            R24 K40 ["Category"]
      142 GETUPVAL                         R25 16
      143 CONCAT                           R23 R24 R25
      144 NAMECALL                         R20 R4 K6 ["getText"]
      146 CALL                             R20 3 1
      147 SETTABLEKS                       R20 R19 K36 ["Title"]
      149 GETUPVAL                         R20 16
      150 SETTABLEKS                       R20 R19 K37 ["PageId"]
      152 SETTABLEKS                       R16 R19 K38 ["CreateChildren"]
      154 CALL                             R17 2 -1
      155 CLOSEUPVALS                      R15
      156 RETURN                           R17 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_15:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_18:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R3 K2 [{"ScriptCollabEnabledChanged", "dispatchShutdownAllServers"}]
        4 LOADK                            R5 K3 ["ScriptCollabEnabled"]
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R5
        9 SETTABLEKS                       R4 R3 K0 ["ScriptCollabEnabledChanged"]
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R4 R3 K1 ["dispatchShutdownAllServers"]
       16 MOVE                             R2 R3
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R4 K1 [script]
        7 GETTABLEKS                       R3 R4 K2 ["Parent"]
        9 GETTABLEKS                       R2 R3 K2 ["Parent"]
       11 GETTABLEKS                       R1 R2 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R4 R1 K5 ["Packages"]
       17 GETTABLEKS                       R3 R4 K6 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R5 R1 K5 ["Packages"]
       24 GETTABLEKS                       R4 R5 K7 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R6 R1 K5 ["Packages"]
       31 GETTABLEKS                       R5 R6 K8 ["RoactRodux"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R7 R1 K5 ["Packages"]
       38 GETTABLEKS                       R6 R7 K9 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K10 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K11 ["withContext"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R11 R1 K12 ["Src"]
       49 GETTABLEKS                       R10 R11 K13 ["Components"]
       51 GETTABLEKS                       R9 R10 K14 ["ToggleButtonWithTitle"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R12 R1 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K10 ["ContextServices"]
       60 GETTABLEKS                       R10 R11 K15 ["Dialog"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R5 K16 ["Util"]
       65 GETTABLEKS                       R11 R10 K17 ["GetTextSize"]
       67 GETTABLEKS                       R12 R10 K18 ["LayoutOrderIterator"]
       69 GETTABLEKS                       R13 R5 K19 ["UI"]
       71 GETTABLEKS                       R14 R13 K20 ["Button"]
       73 GETTABLEKS                       R15 R13 K21 ["HoverArea"]
       75 GETTABLEKS                       R16 R13 K22 ["LinkText"]
       77 GETTABLEKS                       R17 R13 K23 ["TitledFrame"]
       79 GETIMPORT                        R18 K4 [require]
       81 GETTABLEKS                       R22 R1 K12 ["Src"]
       83 GETTABLEKS                       R21 R22 K13 ["Components"]
       85 GETTABLEKS                       R20 R21 K15 ["Dialog"]
       87 GETTABLEKS                       R19 R20 K24 ["SimpleDialog"]
       89 CALL                             R18 1 1
       90 GETIMPORT                        R19 K4 [require]
       92 GETTABLEKS                       R23 R1 K12 ["Src"]
       94 GETTABLEKS                       R22 R23 K13 ["Components"]
       96 GETTABLEKS                       R21 R22 K25 ["SettingsPages"]
       98 GETTABLEKS                       R20 R21 K26 ["SettingsPage"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K4 [require]
      103 GETTABLEKS                       R23 R1 K12 ["Src"]
      105 GETTABLEKS                       R22 R23 K27 ["Actions"]
      107 GETTABLEKS                       R21 R22 K28 ["AddChange"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K4 [require]
      112 GETTABLEKS                       R23 R0 K29 ["Thunks"]
      114 GETTABLEKS                       R22 R23 K30 ["ShutdownAllServers"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K4 [require]
      119 GETTABLEKS                       R25 R1 K12 ["Src"]
      121 GETTABLEKS                       R24 R25 K16 ["Util"]
      123 GETTABLEKS                       R23 R24 K31 ["KeyProvider"]
      125 CALL                             R22 1 1
      126 GETIMPORT                        R23 K33 [game]
      128 LOADK                            R25 K34 ["SpatialVoiceChatLink"]
      129 LOADK                            R26 K35 ["https://create.roblox.com/docs/chat/spatial-voice"]
      130 NAMECALL                         R23 R23 K36 ["DefineFastString"]
      132 CALL                             R23 3 1
      133 GETIMPORT                        R24 K33 [game]
      135 LOADK                            R26 K37 ["EnableRestartServersRedirectInGameSettings"]
      136 NAMECALL                         R24 R24 K38 ["GetFastFlag"]
      138 CALL                             R24 2 1
      139 GETIMPORT                        R25 K33 [game]
      141 LOADK                            R27 K39 ["GuiService"]
      142 NAMECALL                         R25 R25 K40 ["GetService"]
      144 CALL                             R25 2 1
      145 GETIMPORT                        R26 K33 [game]
      147 LOADK                            R28 K41 ["SoundService"]
      148 NAMECALL                         R26 R26 K40 ["GetService"]
      150 CALL                             R26 2 1
      151 GETTABLEKS                       R27 R22 K42 ["getVoiceChatEnabledKeyName"]
      153 MOVE                             R28 R27
      154 CALL                             R28 0 1
      155 GETTABLEKS                       R29 R22 K43 ["getScriptCollaborationEnabledOnServerKeyName"]
      157 MOVE                             R30 R29
      158 CALL                             R30 0 1
      159 GETTABLEKS                       R31 R22 K44 ["getTeamCreateEnabledKeyName"]
      161 CALL                             R31 0 1
      162 GETIMPORT                        R32 K33 [game]
      164 LOADK                            R34 K45 ["MoveSpatialVoice"]
      165 NAMECALL                         R32 R32 K38 ["GetFastFlag"]
      167 CALL                             R32 2 1
      168 GETIMPORT                        R33 K4 [require]
      170 GETTABLEKS                       R36 R1 K12 ["Src"]
      172 GETTABLEKS                       R35 R36 K46 ["Flags"]
      174 GETTABLEKS                       R34 R35 K47 ["getFFlagGameSettingsGameToExperience"]
      176 CALL                             R33 1 1
      177 CALL                             R33 0 1
      178 GETIMPORT                        R34 K33 [game]
      180 LOADK                            R36 K48 ["GameSettingsRenameOptions"]
      181 NAMECALL                         R34 R34 K38 ["GetFastFlag"]
      183 CALL                             R34 2 0
      184 GETIMPORT                        R35 K33 [game]
      186 LOADK                            R37 K48 ["GameSettingsRenameOptions"]
      187 NAMECALL                         R35 R35 K38 ["GetFastFlag"]
      189 CALL                             R35 2 1
      190 JUMPIFNOT                        R35 ; [+2]
      191 LOADK                            R34 K49 ["Other"]
      192 JUMP                             ; [+4]
      193 GETIMPORT                        R35 K1 [script]
      195 GETTABLEKS                       R34 R35 K50 ["Name"]
      197 DUPCLOSURE                       R35 K51 [PROTO_3]
      198 CAPTURE                          VAL R30
      199 CAPTURE                          VAL R31
      200 DUPCLOSURE                       R36 K52 [PROTO_5]
      201 DUPCLOSURE                       R37 K53 [PROTO_6]
      202 DUPCLOSURE                       R38 K54 [PROTO_8]
      203 CAPTURE                          VAL R21
      204 GETTABLEKS                       R39 R3 K55 ["PureComponent"]
      206 GETIMPORT                        R42 K1 [script]
      208 GETTABLEKS                       R41 R42 K50 ["Name"]
      210 NAMECALL                         R39 R39 K56 ["extend"]
      212 CALL                             R39 2 1
      213 DUPCLOSURE                       R40 K57 [PROTO_13]
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R24
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R33
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R35
      229 CAPTURE                          VAL R36
      230 CAPTURE                          VAL R34
      231 SETTABLEKS                       R40 R39 K58 ["render"]
      233 MOVE                             R40 R7
      234 DUPTABLE                         R41 K61 [{"Stylizer", "Localization", "Dialog"}]
      235 GETTABLEKS                       R42 R6 K59 ["Stylizer"]
      237 SETTABLEKS                       R42 R41 K59 ["Stylizer"]
      239 GETTABLEKS                       R42 R6 K60 ["Localization"]
      241 SETTABLEKS                       R42 R41 K60 ["Localization"]
      243 SETTABLEKS                       R9 R41 K15 ["Dialog"]
      245 CALL                             R40 1 1
      246 MOVE                             R41 R39
      247 CALL                             R40 1 1
      248 MOVE                             R39 R40
      249 GETIMPORT                        R40 K4 [require]
      251 GETTABLEKS                       R43 R1 K12 ["Src"]
      253 GETTABLEKS                       R42 R43 K62 ["Networking"]
      255 GETTABLEKS                       R41 R42 K63 ["settingFromState"]
      257 CALL                             R40 1 1
      258 GETTABLEKS                       R41 R4 K64 ["connect"]
      260 DUPCLOSURE                       R42 K65 [PROTO_15]
      261 CAPTURE                          VAL R40
      262 CAPTURE                          VAL R37
      263 DUPCLOSURE                       R43 K66 [PROTO_18]
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R21
      266 CALL                             R41 2 1
      267 MOVE                             R42 R39
      268 CALL                             R41 1 1
      269 MOVE                             R39 R41
      270 SETTABLEKS                       R34 R39 K67 ["LocalizationId"]
      272 RETURN                           R39 1
