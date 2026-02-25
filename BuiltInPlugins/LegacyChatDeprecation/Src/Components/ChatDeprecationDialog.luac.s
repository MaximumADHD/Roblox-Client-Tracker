PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["BrowserService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADK                            R2 K4 ["https://devforum.roblox.com/t/migrate-to-textchatservice-removing-support-for-legacy-chat-and-custom-chat-systems/3237100"]
        7 NAMECALL                         R0 R0 K5 ["OpenBrowserWindow"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ChatVersion"]
        3 GETIMPORT                        R1 K3 [Enum.ChatVersion.LegacyChatService]
        5 JUMPIFNOTEQ                      R0 R1 ; [+14]
        7 GETUPVAL                         R0 1
        8 NEWTABLE                         R2 0 1
       10 GETUPVAL                         R3 0
       11 SETLIST                          R2 R3 1 [1]
       13 NAMECALL                         R0 R0 K4 ["Set"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R0 R1 K5 ["onClosed"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 3
       21 CALL                             R0 0 1
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R0 R1 K5 ["onClosed"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["Enabled"]
       12 JUMPIF                           R0 ; [+4]
       13 GETUPVAL                         R0 1
       14 JUMPIFNOT                        R0 ; [+2]
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["isForkedOrCustom"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 JUMPIFNOT                        R2 ; [+25]
       11 LOADK                            R9 K2 ["Label"]
       12 LOADK                            R10 K3 ["CustomTitle"]
       13 NAMECALL                         R7 R1 K4 ["getText"]
       15 CALL                             R7 3 1
       16 MOVE                             R3 R7
       17 LOADK                            R9 K5 ["Button"]
       18 LOADK                            R10 K6 ["LearnHow"]
       19 NAMECALL                         R7 R1 K4 ["getText"]
       21 CALL                             R7 3 1
       22 MOVE                             R5 R7
       23 LOADK                            R9 K5 ["Button"]
       24 LOADK                            R10 K7 ["RemindLater"]
       25 NAMECALL                         R7 R1 K4 ["getText"]
       27 CALL                             R7 3 1
       28 MOVE                             R6 R7
       29 LOADK                            R9 K8 ["Custom"]
       30 LOADK                            R10 K9 ["Body"]
       31 NAMECALL                         R7 R1 K4 ["getText"]
       33 CALL                             R7 3 1
       34 MOVE                             R4 R7
       35 JUMP                             ; [+24]
       36 LOADK                            R9 K2 ["Label"]
       37 LOADK                            R10 K10 ["Title"]
       38 NAMECALL                         R7 R1 K4 ["getText"]
       40 CALL                             R7 3 1
       41 MOVE                             R3 R7
       42 LOADK                            R9 K11 ["General"]
       43 LOADK                            R10 K9 ["Body"]
       44 NAMECALL                         R7 R1 K4 ["getText"]
       46 CALL                             R7 3 1
       47 MOVE                             R4 R7
       48 LOADK                            R9 K5 ["Button"]
       49 LOADK                            R10 K12 ["LearnMore"]
       50 NAMECALL                         R7 R1 K4 ["getText"]
       52 CALL                             R7 3 1
       53 MOVE                             R5 R7
       54 LOADK                            R9 K5 ["Button"]
       55 LOADK                            R10 K13 ["Migrate"]
       56 NAMECALL                         R7 R1 K4 ["getText"]
       58 CALL                             R7 3 1
       59 MOVE                             R6 R7
       60 GETUPVAL                         R7 1
       61 DUPTABLE                         R8 K20 [{"Intent", "Modal", "Heading", "Body", "ActionPrimary", "ActionSecondary", "OnClosed"}]
       62 LOADK                            R10 K21 ["Warning"]
       63 SETTABLEKS                       R10 R8 K14 ["Intent"]
       65 LOADB                            R10 1
       66 SETTABLEKS                       R10 R8 K15 ["Modal"]
       68 SETTABLEKS                       R3 R8 K16 ["Heading"]
       70 SETTABLEKS                       R4 R8 K9 ["Body"]
       72 DUPTABLE                         R10 K23 [{"Label", "OnActivated"}]
       73 SETTABLEKS                       R5 R10 K2 ["Label"]
       75 DUPCLOSURE                       R11 K24 [PROTO_0]
       76 SETTABLEKS                       R11 R10 K22 ["OnActivated"]
       78 SETTABLEKS                       R10 R8 K17 ["ActionPrimary"]
       80 GETUPVAL                         R10 2
       81 GETUPVAL                         R12 3
       82 GETTABLEKS                       R11 R12 K25 ["CLOSE"]
       84 DUPTABLE                         R12 K23 [{"Label", "OnActivated"}]
       85 SETTABLEKS                       R6 R12 K2 ["Label"]
       87 NEWCLOSURE                       R13 P1
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U6
       92 SETTABLEKS                       R13 R12 K22 ["OnActivated"]
       94 CALL                             R10 2 1
       95 SETTABLEKS                       R10 R8 K18 ["ActionSecondary"]
       97 GETTABLEKS                       R10 R0 K26 ["onClosed"]
       99 SETTABLEKS                       R10 R8 K19 ["OnClosed"]
      101 CALL                             R7 1 3
      102 GETUPVAL                         R11 7
      103 GETTABLEKS                       R10 R11 K27 ["useEffect"]
      105 NEWCLOSURE                       R11 P2
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R8
      110 NEWTABLE                         R12 0 2
      112 GETTABLEKS                       R13 R0 K28 ["Enabled"]
      114 MOVE                             R14 R9
      115 SETLIST                          R12 R13 2 [1]
      117 CALL                             R10 2 0
      118 LOADNIL                          R10
      119 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LegacyChatDeprecation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R7 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R7 K12 ["Hooks"]
       29 GETTABLEKS                       R5 R6 K13 ["useDialog"]
       31 GETTABLEKS                       R7 R2 K14 ["Util"]
       33 GETTABLEKS                       R6 R7 K15 ["DialogAction"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R9 R0 K6 ["Packages"]
       39 GETTABLEKS                       R8 R9 K16 ["Dash"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K17 ["join"]
       44 GETIMPORT                        R9 K19 [game]
       46 LOADK                            R11 K20 ["TextChatService"]
       47 NAMECALL                         R9 R9 K21 ["GetService"]
       49 CALL                             R9 2 1
       50 GETIMPORT                        R10 K19 [game]
       52 LOADK                            R12 K22 ["Selection"]
       53 NAMECALL                         R10 R10 K21 ["GetService"]
       55 CALL                             R10 2 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R14 R0 K23 ["Src"]
       60 GETTABLEKS                       R13 R14 K24 ["Flags"]
       62 GETTABLEKS                       R12 R13 K25 ["getFFlagFixRemindMeButtonStall"]
       64 CALL                             R11 1 1
       65 DUPCLOSURE                       R12 K26 [PROTO_3]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R1
       74 RETURN                           R12 1
