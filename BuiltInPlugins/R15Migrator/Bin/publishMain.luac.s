PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       11 GETUPVAL                         R0 3
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 4
       14 JUMPIFNOT                        R0 ; [+9]
       15 GETUPVAL                         R0 5
       16 LOADB                            R2 0
       17 LOADB                            R3 1
       18 GETIMPORT                        R4 K5 [Enum.StudioCloseMode.None]
       20 NAMECALL                         R0 R0 K6 ["ShowSaveOrPublishPlaceToRoblox"]
       22 CALL                             R0 4 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R0 6
       25 NAMECALL                         R0 R0 K7 ["ShowPublishToRoblox"]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R1 7
       29 GETTABLEKS                       R0 R1 K8 ["new"]
       31 GETUPVAL                         R2 8
       32 GETTABLEKS                       R1 R2 K9 ["CrossPluginCommunicationName"]
       34 CALL                             R0 1 1
       35 GETUPVAL                         R5 8
       36 GETTABLEKS                       R4 R5 K10 ["CrossPluginCommunicationInstructions"]
       38 GETTABLEKS                       R3 R4 K11 ["Published"]
       40 NAMECALL                         R1 R0 K12 ["Fire"]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["PublishBlocked"]
        2 DUPTABLE                         R3 K5 [{"Size", "Resizable", "Modal", "InitialEnabled"}]
        3 GETIMPORT                        R4 K8 [Vector2.new]
        5 LOADN                            R5 144
        6 LOADN                            R6 160
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R4 R3 K1 ["Size"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["Resizable"]
       13 GETUPVAL                         R5 2
       14 NOT                              R4 R5
       15 SETTABLEKS                       R4 R3 K3 ["Modal"]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K4 ["InitialEnabled"]
       20 NAMECALL                         R0 R0 K9 ["CreateQWidgetPluginGui"]
       22 CALL                             R0 3 1
       23 SETUPVAL                         R0 0
       24 GETUPVAL                         R0 0
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R1 R2 K10 ["Name"]
       28 SETTABLEKS                       R1 R0 K10 ["Name"]
       30 GETUPVAL                         R0 0
       31 GETUPVAL                         R1 4
       32 LOADK                            R3 K11 ["PublishingBlocked"]
       33 LOADK                            R4 K12 ["Title"]
       34 NAMECALL                         R1 R1 K13 ["getText"]
       36 CALL                             R1 3 1
       37 SETTABLEKS                       R1 R0 K12 ["Title"]
       39 GETUPVAL                         R0 0
       40 GETIMPORT                        R1 K17 [Enum.ZIndexBehavior.Sibling]
       42 SETTABLEKS                       R1 R0 K15 ["ZIndexBehavior"]
       44 GETUPVAL                         R0 0
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U0
       49 NAMECALL                         R0 R0 K18 ["BindToClose"]
       51 CALL                             R0 2 0
       52 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+17]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"OnClose", "PluginLoaderContext", "Localization"}]
        7 GETUPVAL                         R5 2
        8 SETTABLEKS                       R5 R4 K1 ["OnClose"]
       10 GETUPVAL                         R5 3
       11 SETTABLEKS                       R5 R4 K2 ["PluginLoaderContext"]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K3 ["Localization"]
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 JUMP                             ; [+19]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K0 ["createElement"]
       22 GETUPVAL                         R3 5
       23 DUPTABLE                         R4 K7 [{"OnCancel", "OnContinue", "PluginLoaderContext", "Localization"}]
       24 GETUPVAL                         R5 2
       25 SETTABLEKS                       R5 R4 K5 ["OnCancel"]
       27 GETUPVAL                         R5 6
       28 SETTABLEKS                       R5 R4 K6 ["OnContinue"]
       30 GETUPVAL                         R5 3
       31 SETTABLEKS                       R5 R4 K2 ["PluginLoaderContext"]
       33 GETUPVAL                         R5 4
       34 SETTABLEKS                       R5 R4 K3 ["Localization"]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K8 ["mount"]
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 8
       43 CALL                             R2 2 1
       44 SETUPVAL                         R2 7
       45 GETUPVAL                         R2 8
       46 LOADB                            R3 1
       47 SETTABLEKS                       R3 R2 K9 ["Enabled"]
       49 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["publishingIsBlocked"]
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+72]
        6 LOADB                            R2 0
        7 NEWTABLE                         R3 0 0
        9 LOADB                            R4 0
       10 GETUPVAL                         R5 1
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 DUPTABLE                         R12 K3 [{"name", "blocking"}]
       15 GETTABLEKS                       R13 R9 K4 ["Name"]
       17 SETTABLEKS                       R13 R12 K1 ["name"]
       19 GETUPVAL                         R14 0
       20 GETTABLE                         R13 R14 R8
       21 NAMECALL                         R13 R13 K5 ["isBlocking"]
       23 CALL                             R13 1 1
       24 SETTABLEKS                       R13 R12 K2 ["blocking"]
       26 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       28 MOVE                             R11 R3
       29 GETIMPORT                        R10 K8 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R5 2 ; [-19]
       34 MOVE                             R5 R2
       35 JUMPIF                           R5 ; [+4]
       36 JUMPIFNOTEQKN                    R1 K9 [0] ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 MOVE                             R2 R5
       41 GETUPVAL                         R5 2
       42 GETIMPORT                        R7 K11 [game]
       44 NAMECALL                         R5 R5 K12 ["getAvatarType"]
       46 CALL                             R5 2 1
       47 GETIMPORT                        R6 K16 [Enum.GameAvatarType.R6]
       49 JUMPIFEQ                         R5 R6 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 DUPTABLE                         R7 K3 [{"name", "blocking"}]
       54 LOADK                            R8 K17 ["AvatarTypeIsR6"]
       55 SETTABLEKS                       R8 R7 K1 ["name"]
       57 SETTABLEKS                       R4 R7 K2 ["blocking"]
       59 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       61 MOVE                             R6 R3
       62 GETIMPORT                        R5 K8 [table.insert]
       64 CALL                             R5 2 0
       65 OR                               R2 R2 R4
       66 GETUPVAL                         R5 3
       67 LOADK                            R7 K18 ["onPublish"]
       68 NAMECALL                         R5 R5 K19 ["getHandler"]
       70 CALL                             R5 2 1
       71 MOVE                             R6 R3
       72 CALL                             R5 1 0
       73 SETUPVAL                         R0 4
       74 GETUPVAL                         R5 5
       75 MOVE                             R6 R2
       76 CALL                             R5 1 0
       77 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K2 ["signals"]
       11 GETTABLEKS                       R0 R1 K1 ["StudioPublishService.OnPublishAttempt"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 NAMECALL                         R0 R0 K3 ["Connect"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["defineLuaFlags"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K3 [script]
       13 LOADK                            R4 K6 ["R15Migrator"]
       14 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K1 [require]
       19 GETTABLEKS                       R5 R2 K8 ["Packages"]
       21 GETTABLEKS                       R4 R5 K9 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [require]
       26 GETTABLEKS                       R6 R2 K8 ["Packages"]
       28 GETTABLEKS                       R5 R6 K10 ["Framework"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R6 R4 K11 ["Util"]
       33 GETTABLEKS                       R5 R6 K12 ["CrossPluginCommunication"]
       35 GETIMPORT                        R6 K1 [require]
       37 GETTABLEKS                       R9 R2 K13 ["Src"]
       39 GETTABLEKS                       R8 R9 K14 ["Resources"]
       41 GETTABLEKS                       R7 R8 K15 ["Constants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K1 [require]
       46 GETTABLEKS                       R9 R2 K13 ["Src"]
       48 GETTABLEKS                       R8 R9 K16 ["PublishBlockedPlugin"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K1 [require]
       53 GETTABLEKS                       R10 R2 K13 ["Src"]
       55 GETTABLEKS                       R9 R10 K17 ["PublishWarningPlugin"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K1 [require]
       60 GETTABLEKS                       R12 R2 K13 ["Src"]
       62 GETTABLEKS                       R11 R12 K11 ["Util"]
       64 GETTABLEKS                       R10 R11 K18 ["PublishTagging"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K1 [require]
       69 GETTABLEKS                       R13 R2 K13 ["Src"]
       71 GETTABLEKS                       R12 R13 K11 ["Util"]
       73 GETTABLEKS                       R11 R12 K19 ["prepareToPublish"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R12 R2 K13 ["Src"]
       78 GETTABLEKS                       R11 R12 K20 ["Contexts"]
       80 GETIMPORT                        R12 K1 [require]
       82 GETTABLEKS                       R13 R11 K21 ["NetworkInterface"]
       84 CALL                             R12 1 1
       85 GETTABLEKS                       R13 R12 K22 ["new"]
       87 CALL                             R13 0 1
       88 GETIMPORT                        R14 K1 [require]
       90 GETTABLEKS                       R17 R2 K13 ["Src"]
       92 GETTABLEKS                       R16 R17 K14 ["Resources"]
       94 GETTABLEKS                       R15 R16 K23 ["createAnalyticsHandlers"]
       96 CALL                             R14 1 1
       97 LOADNIL                          R15
       98 LOADNIL                          R16
       99 LOADB                            R17 0
      100 NEWCLOSURE                       R18 P0
      101 CAPTURE                          REF R15
      102 CAPTURE                          VAL R3
      103 CAPTURE                          REF R16
      104 NEWCLOSURE                       R19 P1
      105 CAPTURE                          REF R15
      106 CAPTURE                          VAL R3
      107 CAPTURE                          REF R16
      108 CAPTURE                          VAL R10
      109 CAPTURE                          REF R17
      110 CAPTURE                          UPVAL U0
      111 CAPTURE                          UPVAL U1
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R6
      114 GETTABLEKS                       R20 R4 K24 ["ContextServices"]
      116 GETTABLEKS                       R22 R20 K25 ["Localization"]
      118 GETTABLEKS                       R21 R22 K22 ["new"]
      120 DUPTABLE                         R22 K29 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
      121 GETTABLEKS                       R23 R2 K30 ["Name"]
      123 SETTABLEKS                       R23 R22 K26 ["pluginName"]
      125 GETTABLEKS                       R26 R2 K13 ["Src"]
      127 GETTABLEKS                       R25 R26 K14 ["Resources"]
      129 GETTABLEKS                       R24 R25 K25 ["Localization"]
      131 GETTABLEKS                       R23 R24 K31 ["SourceStrings"]
      133 SETTABLEKS                       R23 R22 K27 ["stringResourceTable"]
      135 GETTABLEKS                       R26 R2 K13 ["Src"]
      137 GETTABLEKS                       R25 R26 K14 ["Resources"]
      139 GETTABLEKS                       R24 R25 K25 ["Localization"]
      141 GETTABLEKS                       R23 R24 K32 ["LocalizedStrings"]
      143 SETTABLEKS                       R23 R22 K28 ["translationResourceTable"]
      145 CALL                             R21 1 1
      146 GETTABLEKS                       R23 R20 K33 ["Analytics"]
      148 GETTABLEKS                       R22 R23 K22 ["new"]
      150 MOVE                             R23 R14
      151 CALL                             R22 1 1
      152 NEWCLOSURE                       R23 P2
      153 CAPTURE                          REF R16
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R21
      158 CAPTURE                          REF R15
      159 CAPTURE                          VAL R3
      160 NEWCLOSURE                       R24 P3
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R19
      168 CAPTURE                          REF R15
      169 CAPTURE                          REF R16
      170 NEWCLOSURE                       R25 P4
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R9
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R22
      179 CAPTURE                          REF R17
      180 CAPTURE                          VAL R24
      181 GETTABLEKS                       R26 R2 K30 ["Name"]
      183 SETTABLEKS                       R26 R0 K30 ["Name"]
      185 MOVE                             R26 R23
      186 CALL                             R26 0 0
      187 GETTABLEKS                       R27 R1 K35 ["signals"]
      189 GETTABLEKS                       R26 R27 K34 ["StudioPublishService.OnPublishAttempt"]
      191 NEWCLOSURE                       R28 P5
      192 CAPTURE                          VAL R9
      193 CAPTURE                          UPVAL U3
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R22
      196 CAPTURE                          REF R17
      197 CAPTURE                          VAL R24
      198 NAMECALL                         R26 R26 K36 ["Connect"]
      200 CALL                             R26 2 0
      201 CLOSEUPVALS                      R15
      202 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioPublishService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["R15Migrator"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R6 R2 K11 ["Src"]
       23 GETTABLEKS                       R5 R6 K12 ["Resources"]
       25 GETTABLEKS                       R4 R5 K13 ["Constants"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K14 ["PublishTags"]
       30 GETIMPORT                        R5 K1 [game]
       32 LOADK                            R7 K15 ["DebugBuiltInPluginModalsNotBlocking"]
       33 NAMECALL                         R5 R5 K16 ["GetFastFlag"]
       35 CALL                             R5 2 1
       36 DUPCLOSURE                       R6 K17 [PROTO_7]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 RETURN                           R6 1
