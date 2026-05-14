PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R1 R0 K3 ["primaryAction"]
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETTABLEKS                       R1 R0 K3 ["primaryAction"]
        9 GETTABLEKS                       R1 R1 K4 ["onActivated"]
       11 GETTABLEKS                       R2 R0 K3 ["primaryAction"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       18 GETTABLEKS                       R1 R0 K5 ["secondaryAction"]
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETTABLEKS                       R1 R0 K5 ["secondaryAction"]
       23 GETTABLEKS                       R1 R1 K4 ["onActivated"]
       25 GETTABLEKS                       R2 R0 K5 ["secondaryAction"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       32 GETTABLEKS                       R1 R0 K6 ["tertiaryAction"]
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETTABLEKS                       R1 R0 K6 ["tertiaryAction"]
       37 GETTABLEKS                       R1 R1 K4 ["onActivated"]
       39 GETTABLEKS                       R2 R0 K6 ["tertiaryAction"]
       41 NEWCLOSURE                       R3 P2
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       46 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoClose"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETIMPORT                        R0 K3 [task.delay]
       10 LOADN                            R1 5
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_7:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_7]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 3
       26 GETTABLEKS                       R7 R0 K3 ["autoClose"]
       28 MOVE                             R8 R1
       29 MOVE                             R9 R2
       30 SETLIST                          R6 R7 3 [1]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R4 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K4 ["Fragment"]
       37 LOADNIL                          R6
       38 DUPTABLE                         R7 K7 [{"OpenButton", "Dialog"}]
       39 GETUPVAL                         R8 1
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K8 ["Button"]
       43 DUPTABLE                         R10 K11 [{"text", "onActivated"}]
       44 JUMPIFNOT                        R1 ; [+2]
       45 LOADK                            R11 K12 ["Close Dialog"]
       46 JUMP                             ; [+1]
       47 LOADK                            R11 K13 ["Open Dialog"]
       48 SETTABLEKS                       R11 R10 K9 ["text"]
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R11 R10 K10 ["onActivated"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K5 ["OpenButton"]
       57 JUMPIFNOT                        R1 ; [+5]
       58 GETUPVAL                         R8 1
       59 GETUPVAL                         R9 3
       60 MOVE                             R10 R3
       61 CALL                             R8 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R8
       64 SETTABLEKS                       R8 R7 K6 ["Dialog"]
       66 CALL                             R4 3 -1
       67 RETURN                           R4 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["join"]
       10 NAMECALL                         R3 R1 K3 ["GetUri"]
       12 CALL                             R3 1 1
       13 DUPTABLE                         R4 K6 [{"Category", "ItemId"}]
       14 LOADK                            R5 K7 ["Panels"]
       15 SETTABLEKS                       R5 R4 K4 ["Category"]
       17 LOADK                            R6 K8 ["DialogStory%*"]
       18 GETUPVAL                         R8 2
       19 NAMECALL                         R6 R6 K9 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 SETTABLEKS                       R5 R4 K5 ["ItemId"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K2 ["join"]
       29 MOVE                             R4 R2
       30 DUPTABLE                         R5 K10 [{"Category"}]
       31 LOADK                            R6 K11 ["Widgets"]
       32 SETTABLEKS                       R6 R5 K4 ["Category"]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 3
       36 GETUPVAL                         R5 4
       37 DUPTABLE                         R6 K20 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "autoClose"}]
       38 SETTABLEKS                       R2 R6 K12 ["uri"]
       40 GETUPVAL                         R7 2
       41 SETTABLEKS                       R7 R6 K13 ["type"]
       43 LOADK                            R7 K21 ["Dialog Title"]
       44 SETTABLEKS                       R7 R6 K14 ["title"]
       46 LOADK                            R7 K22 ["This is a description for the dialog. It provides more details about the purpose of the dialog."]
       47 SETTABLEKS                       R7 R6 K15 ["description"]
       49 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K26 ["child"]
       53 MOVE                             R9 R3
       54 LOADK                            R10 K27 ["Primary"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K12 ["uri"]
       58 LOADK                            R8 K27 ["Primary"]
       59 SETTABLEKS                       R8 R7 K23 ["text"]
       61 DUPCLOSURE                       R8 K28 [PROTO_10]
       62 SETTABLEKS                       R8 R7 K24 ["onActivated"]
       64 SETTABLEKS                       R7 R6 K16 ["primaryAction"]
       66 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K26 ["child"]
       70 MOVE                             R9 R3
       71 LOADK                            R10 K29 ["Secondary"]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K12 ["uri"]
       75 LOADK                            R8 K29 ["Secondary"]
       76 SETTABLEKS                       R8 R7 K23 ["text"]
       78 DUPCLOSURE                       R8 K30 [PROTO_11]
       79 SETTABLEKS                       R8 R7 K24 ["onActivated"]
       81 SETTABLEKS                       R7 R6 K17 ["secondaryAction"]
       83 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K26 ["child"]
       87 MOVE                             R9 R3
       88 LOADK                            R10 K31 ["Tertiary"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K12 ["uri"]
       92 LOADK                            R8 K31 ["Tertiary"]
       93 SETTABLEKS                       R8 R7 K23 ["text"]
       95 DUPCLOSURE                       R8 K32 [PROTO_12]
       96 SETTABLEKS                       R8 R7 K24 ["onActivated"]
       98 SETTABLEKS                       R7 R6 K18 ["tertiaryAction"]
      100 GETTABLEKS                       R7 R0 K33 ["controls"]
      102 GETTABLEKS                       R7 R7 K19 ["autoClose"]
      104 SETTABLEKS                       R7 R6 K19 ["autoClose"]
      106 CALL                             R4 2 -1
      107 RETURN                           R4 -1

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 SETTABLEKS                       R2 R1 K1 ["story"]
       11 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["join"]
       10 NAMECALL                         R3 R1 K3 ["GetUri"]
       12 CALL                             R3 1 1
       13 DUPTABLE                         R4 K6 [{"Category", "ItemId"}]
       14 LOADK                            R5 K7 ["Panels"]
       15 SETTABLEKS                       R5 R4 K4 ["Category"]
       17 LOADK                            R5 K8 ["DialogStoryConfigurable"]
       18 SETTABLEKS                       R5 R4 K5 ["ItemId"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K2 ["join"]
       24 MOVE                             R4 R2
       25 DUPTABLE                         R5 K9 [{"Category"}]
       26 LOADK                            R6 K10 ["Widgets"]
       27 SETTABLEKS                       R6 R5 K4 ["Category"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 2
       31 GETUPVAL                         R5 3
       32 DUPTABLE                         R6 K19 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "autoClose"}]
       33 SETTABLEKS                       R2 R6 K11 ["uri"]
       35 GETTABLEKS                       R7 R0 K20 ["controls"]
       37 GETTABLEKS                       R7 R7 K12 ["type"]
       39 SETTABLEKS                       R7 R6 K12 ["type"]
       41 GETTABLEKS                       R7 R0 K20 ["controls"]
       43 GETTABLEKS                       R7 R7 K13 ["title"]
       45 SETTABLEKS                       R7 R6 K13 ["title"]
       47 GETTABLEKS                       R7 R0 K20 ["controls"]
       49 GETTABLEKS                       R7 R7 K14 ["description"]
       51 SETTABLEKS                       R7 R6 K14 ["description"]
       53 GETTABLEKS                       R8 R0 K20 ["controls"]
       55 GETTABLEKS                       R8 R8 K21 ["primaryActionText"]
       57 JUMPIFEQKS                       R8 K22 [""] ; [+20]
       59 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K26 ["child"]
       63 MOVE                             R9 R3
       64 LOADK                            R10 K27 ["Primary"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K11 ["uri"]
       68 GETTABLEKS                       R8 R0 K20 ["controls"]
       70 GETTABLEKS                       R8 R8 K21 ["primaryActionText"]
       72 SETTABLEKS                       R8 R7 K23 ["text"]
       74 DUPCLOSURE                       R8 K28 [PROTO_15]
       75 SETTABLEKS                       R8 R7 K24 ["onActivated"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R7
       79 SETTABLEKS                       R7 R6 K15 ["primaryAction"]
       81 GETTABLEKS                       R8 R0 K20 ["controls"]
       83 GETTABLEKS                       R8 R8 K29 ["secondaryActionText"]
       85 JUMPIFEQKS                       R8 K22 [""] ; [+20]
       87 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       88 GETUPVAL                         R8 1
       89 GETTABLEKS                       R8 R8 K26 ["child"]
       91 MOVE                             R9 R3
       92 LOADK                            R10 K30 ["Secondary"]
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K11 ["uri"]
       96 GETTABLEKS                       R8 R0 K20 ["controls"]
       98 GETTABLEKS                       R8 R8 K29 ["secondaryActionText"]
      100 SETTABLEKS                       R8 R7 K23 ["text"]
      102 DUPCLOSURE                       R8 K31 [PROTO_16]
      103 SETTABLEKS                       R8 R7 K24 ["onActivated"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R7
      107 SETTABLEKS                       R7 R6 K16 ["secondaryAction"]
      109 GETTABLEKS                       R8 R0 K20 ["controls"]
      111 GETTABLEKS                       R8 R8 K32 ["tertiaryActionText"]
      113 JUMPIFEQKS                       R8 K22 [""] ; [+20]
      115 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
      116 GETUPVAL                         R8 1
      117 GETTABLEKS                       R8 R8 K26 ["child"]
      119 MOVE                             R9 R3
      120 LOADK                            R10 K33 ["Tertiary"]
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K11 ["uri"]
      124 GETTABLEKS                       R8 R0 K20 ["controls"]
      126 GETTABLEKS                       R8 R8 K32 ["tertiaryActionText"]
      128 SETTABLEKS                       R8 R7 K23 ["text"]
      130 DUPCLOSURE                       R8 K34 [PROTO_17]
      131 SETTABLEKS                       R8 R7 K24 ["onActivated"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R7
      135 SETTABLEKS                       R7 R6 K17 ["tertiaryAction"]
      137 GETTABLEKS                       R7 R0 K20 ["controls"]
      139 GETTABLEKS                       R7 R7 K18 ["autoClose"]
      141 SETTABLEKS                       R7 R6 K18 ["autoClose"]
      143 CALL                             R4 2 -1
      144 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K6 ["Parent"]
       24 GETTABLEKS                       R3 R3 K6 ["Parent"]
       26 GETTABLEKS                       R3 R3 K7 ["Packages"]
       28 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K7 ["Packages"]
       35 GETTABLEKS                       R4 R4 K9 ["Framework"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K7 ["Packages"]
       42 GETTABLEKS                       R5 R5 K10 ["React"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K7 ["Packages"]
       49 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K12 ["Src"]
       56 GETTABLEKS                       R7 R7 K13 ["Types"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       61 GETTABLEKS                       R7 R7 K15 ["Plugin"]
       63 GETTABLEKS                       R8 R5 K16 ["Util"]
       65 GETTABLEKS                       R8 R8 K17 ["StudioUri"]
       67 GETTABLEKS                       R9 R4 K18 ["createElement"]
       69 DUPCLOSURE                       R10 K19 [PROTO_9]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 DUPCLOSURE                       R11 K20 [PROTO_14]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R10
       79 DUPTABLE                         R12 K25 [{"name", "summary", "controls", "stories"}]
       80 LOADK                            R13 K26 ["DialogPanel"]
       81 SETTABLEKS                       R13 R12 K21 ["name"]
       83 LOADK                            R13 K27 ["Demonstrates the windowing logic of DialogPanel housing a DialogView. By default, the dialogs automatically close after 5 seconds in case they are unclosable for whatever reason."]
       84 SETTABLEKS                       R13 R12 K22 ["summary"]
       86 DUPTABLE                         R13 K35 [{"type", "title", "description", "primaryActionText", "secondaryActionText", "tertiaryActionText", "autoClose"}]
       87 NEWTABLE                         R14 0 3
       89 LOADK                            R15 K36 ["Default"]
       90 LOADK                            R16 K37 ["Warning"]
       91 LOADK                            R17 K38 ["Critical"]
       92 SETLIST                          R14 R15 3 [1]
       94 SETTABLEKS                       R14 R13 K28 ["type"]
       96 LOADK                            R14 K39 ["Save changes to Place1?"]
       97 SETTABLEKS                       R14 R13 K29 ["title"]
       99 LOADK                            R14 K40 [""]
      100 SETTABLEKS                       R14 R13 K30 ["description"]
      102 LOADK                            R14 K41 ["Save"]
      103 SETTABLEKS                       R14 R13 K31 ["primaryActionText"]
      105 LOADK                            R14 K42 ["Don't save"]
      106 SETTABLEKS                       R14 R13 K32 ["secondaryActionText"]
      108 LOADK                            R14 K43 ["Cancel"]
      109 SETTABLEKS                       R14 R13 K33 ["tertiaryActionText"]
      111 NEWTABLE                         R14 0 2
      113 LOADB                            R15 1
      114 LOADB                            R16 0
      115 SETLIST                          R14 R15 2 [1]
      117 SETTABLEKS                       R14 R13 K34 ["autoClose"]
      119 SETTABLEKS                       R13 R12 K23 ["controls"]
      121 NEWTABLE                         R13 0 4
      123 DUPTABLE                         R14 K45 [{"name", "story"}]
      124 LOADK                            R15 K46 ["Configurable"]
      125 SETTABLEKS                       R15 R14 K21 ["name"]
      127 DUPCLOSURE                       R15 K47 [PROTO_18]
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 SETTABLEKS                       R15 R14 K44 ["story"]
      134 DUPTABLE                         R15 K45 [{"name", "story"}]
      135 LOADK                            R16 K36 ["Default"]
      136 SETTABLEKS                       R16 R15 K21 ["name"]
      138 LOADK                            R17 K36 ["Default"]
      139 NEWCLOSURE                       R16 P3
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 SETTABLEKS                       R16 R15 K44 ["story"]
      147 DUPTABLE                         R16 K45 [{"name", "story"}]
      148 LOADK                            R17 K37 ["Warning"]
      149 SETTABLEKS                       R17 R16 K21 ["name"]
      151 LOADK                            R18 K37 ["Warning"]
      152 NEWCLOSURE                       R17 P3
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R10
      158 SETTABLEKS                       R17 R16 K44 ["story"]
      160 DUPTABLE                         R17 K45 [{"name", "story"}]
      161 LOADK                            R18 K38 ["Critical"]
      162 SETTABLEKS                       R18 R17 K21 ["name"]
      164 LOADK                            R19 K38 ["Critical"]
      165 NEWCLOSURE                       R18 P3
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R10
      171 SETTABLEKS                       R18 R17 K44 ["story"]
      173 SETLIST                          R13 R14 4 [1]
      175 SETTABLEKS                       R13 R12 K24 ["stories"]
      177 RETURN                           R12 1
