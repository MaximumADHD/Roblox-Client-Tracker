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
       13 DUPTABLE                         R4 K7 [{["Category"] = "Panels", ["ItemId"]}]
       14 LOADK                            R6 K8 ["DialogStory%*"]
       15 GETUPVAL                         R8 2
       16 NAMECALL                         R6 R6 K9 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K6 ["ItemId"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K2 ["join"]
       26 MOVE                             R4 R2
       27 DUPTABLE                         R5 K11 [{["Category"] = "Widgets"}]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 3
       30 GETUPVAL                         R5 4
       31 DUPTABLE                         R6 K22 [{["uri"], ["type"], ["title"] = "Dialog Title", ["description"] = "This is a description for the dialog. It provides more details about the purpose of the dialog.", ["primaryAction"], ["secondaryAction"], ["tertiaryAction"], ["autoClose"]}]
       32 SETTABLEKS                       R2 R6 K12 ["uri"]
       34 GETUPVAL                         R7 2
       35 SETTABLEKS                       R7 R6 K13 ["type"]
       37 DUPTABLE                         R7 K26 [{["uri"], ["text"] = "Primary", ["onActivated"]}]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K27 ["child"]
       41 MOVE                             R9 R3
       42 LOADK                            R10 K24 ["Primary"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K12 ["uri"]
       46 DUPCLOSURE                       R8 K28 [PROTO_10]
       47 SETTABLEKS                       R8 R7 K25 ["onActivated"]
       49 SETTABLEKS                       R7 R6 K18 ["primaryAction"]
       51 DUPTABLE                         R7 K30 [{["uri"], ["text"] = "Secondary", ["onActivated"]}]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K27 ["child"]
       55 MOVE                             R9 R3
       56 LOADK                            R10 K29 ["Secondary"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K12 ["uri"]
       60 DUPCLOSURE                       R8 K31 [PROTO_11]
       61 SETTABLEKS                       R8 R7 K25 ["onActivated"]
       63 SETTABLEKS                       R7 R6 K19 ["secondaryAction"]
       65 DUPTABLE                         R7 K33 [{["uri"], ["text"] = "Tertiary", ["onActivated"]}]
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K27 ["child"]
       69 MOVE                             R9 R3
       70 LOADK                            R10 K32 ["Tertiary"]
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K12 ["uri"]
       74 DUPCLOSURE                       R8 K34 [PROTO_12]
       75 SETTABLEKS                       R8 R7 K25 ["onActivated"]
       77 SETTABLEKS                       R7 R6 K20 ["tertiaryAction"]
       79 GETTABLEKS                       R7 R0 K35 ["controls"]
       81 GETTABLEKS                       R7 R7 K21 ["autoClose"]
       83 SETTABLEKS                       R7 R6 K21 ["autoClose"]
       85 CALL                             R4 2 -1
       86 RETURN                           R4 -1

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
       13 DUPTABLE                         R4 K8 [{["Category"] = "Panels", ["ItemId"] = "DialogStoryConfigurable"}]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["join"]
       18 MOVE                             R4 R2
       19 DUPTABLE                         R5 K10 [{["Category"] = "Widgets"}]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 2
       22 GETUPVAL                         R5 3
       23 DUPTABLE                         R6 K19 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "autoClose"}]
       24 SETTABLEKS                       R2 R6 K11 ["uri"]
       26 GETTABLEKS                       R7 R0 K20 ["controls"]
       28 GETTABLEKS                       R7 R7 K12 ["type"]
       30 SETTABLEKS                       R7 R6 K12 ["type"]
       32 GETTABLEKS                       R7 R0 K20 ["controls"]
       34 GETTABLEKS                       R7 R7 K13 ["title"]
       36 SETTABLEKS                       R7 R6 K13 ["title"]
       38 GETTABLEKS                       R7 R0 K20 ["controls"]
       40 GETTABLEKS                       R7 R7 K14 ["description"]
       42 SETTABLEKS                       R7 R6 K14 ["description"]
       44 GETTABLEKS                       R8 R0 K20 ["controls"]
       46 GETTABLEKS                       R8 R8 K21 ["primaryActionText"]
       48 JUMPIFEQKS                       R8 K22 [""] ; [+20]
       50 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K26 ["child"]
       54 MOVE                             R9 R3
       55 LOADK                            R10 K27 ["Primary"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K11 ["uri"]
       59 GETTABLEKS                       R8 R0 K20 ["controls"]
       61 GETTABLEKS                       R8 R8 K21 ["primaryActionText"]
       63 SETTABLEKS                       R8 R7 K23 ["text"]
       65 DUPCLOSURE                       R8 K28 [PROTO_15]
       66 SETTABLEKS                       R8 R7 K24 ["onActivated"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R7
       70 SETTABLEKS                       R7 R6 K15 ["primaryAction"]
       72 GETTABLEKS                       R8 R0 K20 ["controls"]
       74 GETTABLEKS                       R8 R8 K29 ["secondaryActionText"]
       76 JUMPIFEQKS                       R8 K22 [""] ; [+20]
       78 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R8 R8 K26 ["child"]
       82 MOVE                             R9 R3
       83 LOADK                            R10 K30 ["Secondary"]
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K11 ["uri"]
       87 GETTABLEKS                       R8 R0 K20 ["controls"]
       89 GETTABLEKS                       R8 R8 K29 ["secondaryActionText"]
       91 SETTABLEKS                       R8 R7 K23 ["text"]
       93 DUPCLOSURE                       R8 K31 [PROTO_16]
       94 SETTABLEKS                       R8 R7 K24 ["onActivated"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R7
       98 SETTABLEKS                       R7 R6 K16 ["secondaryAction"]
      100 GETTABLEKS                       R8 R0 K20 ["controls"]
      102 GETTABLEKS                       R8 R8 K32 ["tertiaryActionText"]
      104 JUMPIFEQKS                       R8 K22 [""] ; [+20]
      106 DUPTABLE                         R7 K25 [{"uri", "text", "onActivated"}]
      107 GETUPVAL                         R8 1
      108 GETTABLEKS                       R8 R8 K26 ["child"]
      110 MOVE                             R9 R3
      111 LOADK                            R10 K33 ["Tertiary"]
      112 CALL                             R8 2 1
      113 SETTABLEKS                       R8 R7 K11 ["uri"]
      115 GETTABLEKS                       R8 R0 K20 ["controls"]
      117 GETTABLEKS                       R8 R8 K32 ["tertiaryActionText"]
      119 SETTABLEKS                       R8 R7 K23 ["text"]
      121 DUPCLOSURE                       R8 K34 [PROTO_17]
      122 SETTABLEKS                       R8 R7 K24 ["onActivated"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R7
      126 SETTABLEKS                       R7 R6 K17 ["tertiaryAction"]
      128 GETTABLEKS                       R7 R0 K20 ["controls"]
      130 GETTABLEKS                       R7 R7 K18 ["autoClose"]
      132 SETTABLEKS                       R7 R6 K18 ["autoClose"]
      134 CALL                             R4 2 -1
      135 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K4 ["Parent"]
       15 GETTABLEKS                       R3 R3 K7 ["Dialog"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K10 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Types"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       40 GETTABLEKS                       R7 R7 K13 ["Plugin"]
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Util"]
       46 GETTABLEKS                       R9 R9 K15 ["StudioUri"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R5 K16 ["createElement"]
       51 DUPCLOSURE                       R10 K17 [PROTO_9]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R11 K18 [PROTO_14]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 DUPTABLE                         R12 K25 [{["name"] = "DialogPanel", ["summary"] = "Demonstrates the windowing logic of DialogPanel housing a DialogView. By default, the dialogs automatically close after 5 seconds in case they are unclosable for whatever reason.", ["controls"], ["stories"]}]
       62 DUPTABLE                         R13 K38 [{["type"], ["title"] = "Save changes to Place1?", ["description"] = "", ["primaryActionText"] = "Save", ["secondaryActionText"] = "Don't save", ["tertiaryActionText"] = "Cancel", ["autoClose"]}]
       63 NEWTABLE                         R14 0 3
       65 LOADK                            R15 K39 ["Default"]
       66 LOADK                            R16 K40 ["Warning"]
       67 LOADK                            R17 K41 ["Critical"]
       68 SETLIST                          R14 R15 3 [1]
       70 SETTABLEKS                       R14 R13 K26 ["type"]
       72 NEWTABLE                         R14 0 2
       74 LOADB                            R15 1
       75 LOADB                            R16 0
       76 SETLIST                          R14 R15 2 [1]
       78 SETTABLEKS                       R14 R13 K37 ["autoClose"]
       80 SETTABLEKS                       R13 R12 K23 ["controls"]
       82 NEWTABLE                         R13 0 4
       84 DUPTABLE                         R14 K44 [{["name"] = "Configurable", ["story"]}]
       85 DUPCLOSURE                       R15 K45 [PROTO_18]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R15 R14 K43 ["story"]
       92 DUPTABLE                         R15 K46 [{["name"] = "Default", ["story"]}]
       93 LOADK                            R17 K39 ["Default"]
       94 NEWCLOSURE                       R16 P3
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R16 R15 K43 ["story"]
      102 DUPTABLE                         R16 K47 [{["name"] = "Warning", ["story"]}]
      103 LOADK                            R18 K40 ["Warning"]
      104 NEWCLOSURE                       R17 P3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R17 R16 K43 ["story"]
      112 DUPTABLE                         R17 K48 [{["name"] = "Critical", ["story"]}]
      113 LOADK                            R19 K41 ["Critical"]
      114 NEWCLOSURE                       R18 P3
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R10
      120 SETTABLEKS                       R18 R17 K43 ["story"]
      122 SETLIST                          R13 R14 4 [1]
      124 SETTABLEKS                       R13 R12 K24 ["stories"]
      126 RETURN                           R12 1
