PROTO_0:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/LegacyChatDeprecation"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["BrowserService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADK                            R2 K4 ["https://devforum.roblox.com/t/migrate-to-textchatservice-removing-support-for-legacy-chat-and-custom-chat-systems/3237100"]
        7 NAMECALL                         R0 R0 K5 ["OpenBrowserWindow"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ChatVersion"]
        3 GETIMPORT                        R1 K3 [Enum.ChatVersion.LegacyChatService]
        5 JUMPIFNOTEQ                      R0 R1 ; [+14]
        7 GETUPVAL                         R0 1
        8 NEWTABLE                         R2 0 1
       10 GETUPVAL                         R3 0
       11 SETLIST                          R2 R3 1 [1]
       13 NAMECALL                         R0 R0 K4 ["Set"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K5 ["onClosed"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 3
       21 CALL                             R0 0 1
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 2
       24 GETTABLEKS                       R0 R0 K5 ["onClosed"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["Enabled"]
       12 JUMPIF                           R0 ; [+4]
       13 GETUPVAL                         R0 1
       14 JUMPIFNOT                        R0 ; [+2]
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R0 K2 ["isForkedOrCustom"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 JUMPIFNOT                        R3 ; [+25]
       18 LOADK                            R10 K3 ["Label"]
       19 LOADK                            R11 K4 ["CustomTitle"]
       20 NAMECALL                         R8 R1 K5 ["getText"]
       22 CALL                             R8 3 1
       23 MOVE                             R4 R8
       24 LOADK                            R10 K6 ["Button"]
       25 LOADK                            R11 K7 ["LearnHow"]
       26 NAMECALL                         R8 R1 K5 ["getText"]
       28 CALL                             R8 3 1
       29 MOVE                             R6 R8
       30 LOADK                            R10 K6 ["Button"]
       31 LOADK                            R11 K8 ["RemindLater"]
       32 NAMECALL                         R8 R1 K5 ["getText"]
       34 CALL                             R8 3 1
       35 MOVE                             R7 R8
       36 LOADK                            R10 K9 ["Custom"]
       37 LOADK                            R11 K10 ["Body"]
       38 NAMECALL                         R8 R1 K5 ["getText"]
       40 CALL                             R8 3 1
       41 MOVE                             R5 R8
       42 JUMP                             ; [+24]
       43 LOADK                            R10 K3 ["Label"]
       44 LOADK                            R11 K11 ["Title"]
       45 NAMECALL                         R8 R1 K5 ["getText"]
       47 CALL                             R8 3 1
       48 MOVE                             R4 R8
       49 LOADK                            R10 K12 ["General"]
       50 LOADK                            R11 K10 ["Body"]
       51 NAMECALL                         R8 R1 K5 ["getText"]
       53 CALL                             R8 3 1
       54 MOVE                             R5 R8
       55 LOADK                            R10 K6 ["Button"]
       56 LOADK                            R11 K13 ["LearnMore"]
       57 NAMECALL                         R8 R1 K5 ["getText"]
       59 CALL                             R8 3 1
       60 MOVE                             R6 R8
       61 LOADK                            R10 K6 ["Button"]
       62 LOADK                            R11 K14 ["Migrate"]
       63 NAMECALL                         R8 R1 K5 ["getText"]
       65 CALL                             R8 3 1
       66 MOVE                             R7 R8
       67 GETUPVAL                         R9 2
       68 JUMPIFNOT                        R9 ; [+14]
       69 GETUPVAL                         R8 3
       70 GETTABLEKS                       R8 R8 K15 ["useMemo"]
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R2
       76 NEWTABLE                         R10 0 1
       78 MOVE                             R11 R2
       79 SETLIST                          R10 R11 1 [1]
       81 CALL                             R8 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R8
       84 GETUPVAL                         R9 6
       85 DUPTABLE                         R10 K25 [{["Intent"] = "Warning", ["Modal"] = True, ["Heading"], ["Body"], ["ActionPrimary"], ["ActionSecondary"], ["OnClosed"], ["MigrateToStudioFoundation"]}]
       86 SETTABLEKS                       R4 R10 K20 ["Heading"]
       88 SETTABLEKS                       R5 R10 K10 ["Body"]
       90 DUPTABLE                         R12 K27 [{"Label", "OnActivated"}]
       91 SETTABLEKS                       R6 R12 K3 ["Label"]
       93 DUPCLOSURE                       R13 K28 [PROTO_1]
       94 SETTABLEKS                       R13 R12 K26 ["OnActivated"]
       96 SETTABLEKS                       R12 R10 K21 ["ActionPrimary"]
       98 GETUPVAL                         R12 7
       99 GETUPVAL                         R13 8
      100 GETTABLEKS                       R13 R13 K29 ["CLOSE"]
      102 DUPTABLE                         R14 K27 [{"Label", "OnActivated"}]
      103 SETTABLEKS                       R7 R14 K3 ["Label"]
      105 NEWCLOSURE                       R15 P2
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U10
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U11
      110 SETTABLEKS                       R15 R14 K26 ["OnActivated"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R10 K22 ["ActionSecondary"]
      115 GETTABLEKS                       R12 R0 K30 ["onClosed"]
      117 SETTABLEKS                       R12 R10 K23 ["OnClosed"]
      119 SETTABLEKS                       R8 R10 K24 ["MigrateToStudioFoundation"]
      121 CALL                             R9 1 3
      122 GETUPVAL                         R12 3
      123 GETTABLEKS                       R12 R12 K31 ["useEffect"]
      125 NEWCLOSURE                       R13 P3
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R10
      130 NEWTABLE                         R14 0 2
      132 GETTABLEKS                       R15 R0 K32 ["Enabled"]
      134 MOVE                             R16 R11
      135 SETLIST                          R14 R15 2 [1]
      137 CALL                             R12 2 0
      138 LOADNIL                          R12
      139 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LegacyChatDeprecation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Plugin"]
       34 GETTABLEKS                       R7 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K15 ["RESTRICTED_useDialog"]
       40 GETTABLEKS                       R8 R2 K16 ["Util"]
       42 GETTABLEKS                       R8 R8 K17 ["DialogAction"]
       44 GETTABLEKS                       R9 R3 K18 ["Components"]
       46 GETTABLEKS                       R9 R9 K19 ["Dialog"]
       48 GETTABLEKS                       R10 R3 K16 ["Util"]
       50 GETTABLEKS                       R10 R10 K20 ["StudioUri"]
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R0 K6 ["Packages"]
       56 GETTABLEKS                       R12 R12 K21 ["Dash"]
       58 CALL                             R11 1 1
       59 GETTABLEKS                       R12 R11 K22 ["join"]
       61 GETIMPORT                        R13 K24 [game]
       63 LOADK                            R15 K25 ["TextChatService"]
       64 NAMECALL                         R13 R13 K26 ["GetService"]
       66 CALL                             R13 2 1
       67 GETIMPORT                        R14 K24 [game]
       69 LOADK                            R16 K27 ["Selection"]
       70 NAMECALL                         R14 R14 K26 ["GetService"]
       72 CALL                             R14 2 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R16 R0 K28 ["Src"]
       77 GETTABLEKS                       R16 R16 K29 ["Flags"]
       79 GETTABLEKS                       R16 R16 K30 ["getFFlagFixRemindMeButtonStall"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R0 K28 ["Src"]
       86 GETTABLEKS                       R17 R17 K29 ["Flags"]
       88 GETTABLEKS                       R17 R17 K31 ["getFFlagLegacyChatDeprecationMigrateUseDialog"]
       90 CALL                             R16 1 1
       91 CALL                             R16 0 1
       92 DUPCLOSURE                       R17 K32 [PROTO_4]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R15
      105 RETURN                           R17 1
