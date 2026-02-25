PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K4 [{"Category", "ItemId"}]
        8 LOADK                            R3 K5 ["Panels"]
        9 SETTABLEKS                       R3 R2 K2 ["Category"]
       11 LOADK                            R4 K6 ["Dialog_%*"]
       12 GETIMPORT                        R6 K8 [game]
       14 LOADK                            R8 K9 ["HttpService"]
       15 NAMECALL                         R6 R6 K10 ["GetService"]
       17 CALL                             R6 2 1
       18 LOADB                            R8 0
       19 NAMECALL                         R6 R6 K11 ["GenerateGUID"]
       21 CALL                             R6 2 1
       22 NAMECALL                         R4 R4 K12 ["format"]
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 SETTABLEKS                       R3 R2 K3 ["ItemId"]
       28 CALL                             R0 2 -1
       29 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADN                            R2 94
        6 LOADN                            R3 102
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R1 R0 K3 ["onAbsoluteSizeChanged"]
        8 GETTABLEKS                       R1 R0 K4 ["primaryAction"]
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETTABLEKS                       R2 R0 K4 ["primaryAction"]
       13 GETTABLEKS                       R1 R2 K5 ["onActivated"]
       15 GETTABLEKS                       R2 R0 K4 ["primaryAction"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K5 ["onActivated"]
       22 GETTABLEKS                       R1 R0 K6 ["secondaryAction"]
       24 JUMPIFNOT                        R1 ; [+11]
       25 GETTABLEKS                       R2 R0 K6 ["secondaryAction"]
       27 GETTABLEKS                       R1 R2 K5 ["onActivated"]
       29 GETTABLEKS                       R2 R0 K6 ["secondaryAction"]
       31 NEWCLOSURE                       R3 P2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R3 R2 K5 ["onActivated"]
       36 GETTABLEKS                       R1 R0 K7 ["tertiaryAction"]
       38 JUMPIFNOT                        R1 ; [+11]
       39 GETTABLEKS                       R2 R0 K7 ["tertiaryAction"]
       41 GETTABLEKS                       R1 R2 K5 ["onActivated"]
       43 GETTABLEKS                       R2 R0 K7 ["tertiaryAction"]
       45 NEWCLOSURE                       R3 P3
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R3 R2 K5 ["onActivated"]
       50 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["autoClose"]
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

PROTO_10:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_10]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["use"]
        8 CALL                             R3 0 1
        9 NAMECALL                         R3 R3 K2 ["get"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R3
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       27 DUPCLOSURE                       R6 K4 [PROTO_1]
       28 CAPTURE                          UPVAL U3
       29 NEWTABLE                         R7 0 0
       31 CALL                             R5 2 2
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K3 ["useMemo"]
       35 NEWCLOSURE                       R8 P2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R9 0 2
       41 MOVE                             R10 R0
       42 MOVE                             R11 R6
       43 SETLIST                          R9 R10 2 [1]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       49 NEWCLOSURE                       R9 P3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R10 0 3
       55 GETTABLEKS                       R11 R0 K6 ["autoClose"]
       57 MOVE                             R12 R1
       58 MOVE                             R13 R2
       59 SETLIST                          R10 R11 3 [1]
       61 CALL                             R8 2 0
       62 GETUPVAL                         R8 4
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R9 R10 K7 ["Fragment"]
       66 LOADNIL                          R10
       67 DUPTABLE                         R11 K10 [{"OpenButton", "DialogPanel"}]
       68 GETUPVAL                         R12 4
       69 GETUPVAL                         R14 5
       70 GETTABLEKS                       R13 R14 K11 ["Button"]
       72 DUPTABLE                         R14 K14 [{"text", "onActivated"}]
       73 JUMPIFNOT                        R1 ; [+2]
       74 LOADK                            R15 K15 ["Close Dialog"]
       75 JUMP                             ; [+1]
       76 LOADK                            R15 K16 ["Open Dialog"]
       77 SETTABLEKS                       R15 R14 K12 ["text"]
       79 NEWCLOSURE                       R15 P4
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R15 R14 K13 ["onActivated"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K8 ["OpenButton"]
       86 JUMPIFNOT                        R1 ; [+16]
       87 GETUPVAL                         R12 4
       88 GETUPVAL                         R13 6
       89 DUPTABLE                         R14 K19 [{"uri", "getSize"}]
       90 SETTABLEKS                       R4 R14 K17 ["uri"]
       92 SETTABLEKS                       R5 R14 K18 ["getSize"]
       94 DUPTABLE                         R15 K21 [{"DialogView"}]
       95 GETUPVAL                         R16 4
       96 GETUPVAL                         R17 7
       97 MOVE                             R18 R7
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K20 ["DialogView"]
      101 CALL                             R12 3 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R12
      104 SETTABLEKS                       R12 R11 K9 ["DialogPanel"]
      106 CALL                             R8 3 -1
      107 RETURN                           R8 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K7 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "autoClose"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["type"]
        6 LOADK                            R4 K8 ["Dialog Title"]
        7 SETTABLEKS                       R4 R3 K1 ["title"]
        9 LOADK                            R4 K9 ["This is a description for the dialog. It provides more details about the purpose of the dialog."]
       10 SETTABLEKS                       R4 R3 K2 ["description"]
       12 DUPTABLE                         R4 K13 [{"uri", "text", "onActivated"}]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K14 ["fromWidget"]
       16 LOADK                            R6 K15 ["Dialog"]
       17 LOADK                            R7 K16 ["Primary"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K10 ["uri"]
       21 LOADK                            R5 K16 ["Primary"]
       22 SETTABLEKS                       R5 R4 K11 ["text"]
       24 DUPCLOSURE                       R5 K17 [PROTO_13]
       25 SETTABLEKS                       R5 R4 K12 ["onActivated"]
       27 SETTABLEKS                       R4 R3 K3 ["primaryAction"]
       29 DUPTABLE                         R4 K13 [{"uri", "text", "onActivated"}]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R5 R6 K14 ["fromWidget"]
       33 LOADK                            R6 K15 ["Dialog"]
       34 LOADK                            R7 K18 ["Secondary"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K10 ["uri"]
       38 LOADK                            R5 K18 ["Secondary"]
       39 SETTABLEKS                       R5 R4 K11 ["text"]
       41 DUPCLOSURE                       R5 K19 [PROTO_14]
       42 SETTABLEKS                       R5 R4 K12 ["onActivated"]
       44 SETTABLEKS                       R4 R3 K4 ["secondaryAction"]
       46 DUPTABLE                         R4 K13 [{"uri", "text", "onActivated"}]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R5 R6 K14 ["fromWidget"]
       50 LOADK                            R6 K15 ["Dialog"]
       51 LOADK                            R7 K20 ["Tertiary"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K10 ["uri"]
       55 LOADK                            R5 K20 ["Tertiary"]
       56 SETTABLEKS                       R5 R4 K11 ["text"]
       58 DUPCLOSURE                       R5 K21 [PROTO_15]
       59 SETTABLEKS                       R5 R4 K12 ["onActivated"]
       61 SETTABLEKS                       R4 R3 K5 ["tertiaryAction"]
       63 GETTABLEKS                       R5 R0 K22 ["controls"]
       65 GETTABLEKS                       R4 R5 K6 ["autoClose"]
       67 SETTABLEKS                       R4 R3 K6 ["autoClose"]
       69 CALL                             R1 2 -1
       70 RETURN                           R1 -1

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R2 R1 K1 ["story"]
       10 RETURN                           R1 1

PROTO_18:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K7 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "autoClose"}]
        3 GETTABLEKS                       R5 R0 K8 ["controls"]
        5 GETTABLEKS                       R4 R5 K0 ["type"]
        7 SETTABLEKS                       R4 R3 K0 ["type"]
        9 GETTABLEKS                       R5 R0 K8 ["controls"]
       11 GETTABLEKS                       R4 R5 K1 ["title"]
       13 SETTABLEKS                       R4 R3 K1 ["title"]
       15 GETTABLEKS                       R5 R0 K8 ["controls"]
       17 GETTABLEKS                       R4 R5 K2 ["description"]
       19 SETTABLEKS                       R4 R3 K2 ["description"]
       21 GETTABLEKS                       R6 R0 K8 ["controls"]
       23 GETTABLEKS                       R5 R6 K9 ["primaryActionText"]
       25 JUMPIFEQKS                       R5 K10 [""] ; [+20]
       27 DUPTABLE                         R4 K14 [{"uri", "text", "onActivated"}]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K15 ["fromWidget"]
       31 LOADK                            R6 K16 ["Dialog"]
       32 LOADK                            R7 K17 ["Primary"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K11 ["uri"]
       36 GETTABLEKS                       R6 R0 K8 ["controls"]
       38 GETTABLEKS                       R5 R6 K9 ["primaryActionText"]
       40 SETTABLEKS                       R5 R4 K12 ["text"]
       42 DUPCLOSURE                       R5 K18 [PROTO_18]
       43 SETTABLEKS                       R5 R4 K13 ["onActivated"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K3 ["primaryAction"]
       49 GETTABLEKS                       R6 R0 K8 ["controls"]
       51 GETTABLEKS                       R5 R6 K19 ["secondaryActionText"]
       53 JUMPIFEQKS                       R5 K10 [""] ; [+20]
       55 DUPTABLE                         R4 K14 [{"uri", "text", "onActivated"}]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R5 R6 K15 ["fromWidget"]
       59 LOADK                            R6 K16 ["Dialog"]
       60 LOADK                            R7 K20 ["Secondary"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K11 ["uri"]
       64 GETTABLEKS                       R6 R0 K8 ["controls"]
       66 GETTABLEKS                       R5 R6 K19 ["secondaryActionText"]
       68 SETTABLEKS                       R5 R4 K12 ["text"]
       70 DUPCLOSURE                       R5 K21 [PROTO_19]
       71 SETTABLEKS                       R5 R4 K13 ["onActivated"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R4
       75 SETTABLEKS                       R4 R3 K4 ["secondaryAction"]
       77 GETTABLEKS                       R6 R0 K8 ["controls"]
       79 GETTABLEKS                       R5 R6 K22 ["tertiaryActionText"]
       81 JUMPIFEQKS                       R5 K10 [""] ; [+20]
       83 DUPTABLE                         R4 K14 [{"uri", "text", "onActivated"}]
       84 GETUPVAL                         R6 2
       85 GETTABLEKS                       R5 R6 K15 ["fromWidget"]
       87 LOADK                            R6 K16 ["Dialog"]
       88 LOADK                            R7 K23 ["Tertiary"]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K11 ["uri"]
       92 GETTABLEKS                       R6 R0 K8 ["controls"]
       94 GETTABLEKS                       R5 R6 K22 ["tertiaryActionText"]
       96 SETTABLEKS                       R5 R4 K12 ["text"]
       98 DUPCLOSURE                       R5 K24 [PROTO_20]
       99 SETTABLEKS                       R5 R4 K13 ["onActivated"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R4
      103 SETTABLEKS                       R4 R3 K5 ["tertiaryAction"]
      105 GETTABLEKS                       R5 R0 K8 ["controls"]
      107 GETTABLEKS                       R4 R5 K6 ["autoClose"]
      109 SETTABLEKS                       R4 R3 K6 ["autoClose"]
      111 CALL                             R1 2 -1
      112 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["DialogPanel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["DialogView"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R9 K1 [script]
       29 GETTABLEKS                       R8 R9 K6 ["Parent"]
       31 GETTABLEKS                       R7 R8 K6 ["Parent"]
       33 GETTABLEKS                       R6 R7 K6 ["Parent"]
       35 GETTABLEKS                       R5 R6 K11 ["Packages"]
       37 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R6 R0 K11 ["Packages"]
       44 GETTABLEKS                       R5 R6 K13 ["Framework"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R7 R0 K11 ["Packages"]
       51 GETTABLEKS                       R6 R7 K14 ["React"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Packages"]
       58 GETTABLEKS                       R7 R8 K15 ["Signals"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Packages"]
       65 GETTABLEKS                       R8 R9 K16 ["StudioFoundation"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R10 K17 ["Types"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R10 R4 K18 ["ContextServices"]
       77 GETTABLEKS                       R9 R10 K19 ["Plugin"]
       79 GETTABLEKS                       R11 R7 K20 ["Util"]
       81 GETTABLEKS                       R10 R11 K21 ["StudioUri"]
       83 GETTABLEKS                       R11 R5 K22 ["createElement"]
       85 DUPCLOSURE                       R12 K23 [PROTO_12]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 DUPCLOSURE                       R13 K24 [PROTO_17]
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R10
       98 DUPTABLE                         R14 K29 [{"name", "summary", "controls", "stories"}]
       99 LOADK                            R15 K7 ["DialogPanel"]
      100 SETTABLEKS                       R15 R14 K25 ["name"]
      102 LOADK                            R15 K30 ["Demonstrates the windowing logic of DialogPanel housing a DialogView. By default, the dialogs automatically close after 5 seconds in case they are unclosable for whatever reason."]
      103 SETTABLEKS                       R15 R14 K26 ["summary"]
      105 DUPTABLE                         R15 K38 [{"type", "title", "description", "primaryActionText", "secondaryActionText", "tertiaryActionText", "autoClose"}]
      106 NEWTABLE                         R16 0 3
      108 LOADK                            R17 K39 ["Default"]
      109 LOADK                            R18 K40 ["Warning"]
      110 LOADK                            R19 K41 ["Critical"]
      111 SETLIST                          R16 R17 3 [1]
      113 SETTABLEKS                       R16 R15 K31 ["type"]
      115 LOADK                            R16 K42 ["Save changes to Place1?"]
      116 SETTABLEKS                       R16 R15 K32 ["title"]
      118 LOADK                            R16 K43 [""]
      119 SETTABLEKS                       R16 R15 K33 ["description"]
      121 LOADK                            R16 K44 ["Save"]
      122 SETTABLEKS                       R16 R15 K34 ["primaryActionText"]
      124 LOADK                            R16 K45 ["Don't save"]
      125 SETTABLEKS                       R16 R15 K35 ["secondaryActionText"]
      127 LOADK                            R16 K46 ["Cancel"]
      128 SETTABLEKS                       R16 R15 K36 ["tertiaryActionText"]
      130 NEWTABLE                         R16 0 2
      132 LOADB                            R17 1
      133 LOADB                            R18 0
      134 SETLIST                          R16 R17 2 [1]
      136 SETTABLEKS                       R16 R15 K37 ["autoClose"]
      138 SETTABLEKS                       R15 R14 K27 ["controls"]
      140 NEWTABLE                         R15 0 4
      142 DUPTABLE                         R16 K48 [{"name", "story"}]
      143 LOADK                            R17 K49 ["Configurable"]
      144 SETTABLEKS                       R17 R16 K25 ["name"]
      146 DUPCLOSURE                       R17 K50 [PROTO_21]
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R10
      150 SETTABLEKS                       R17 R16 K47 ["story"]
      152 DUPTABLE                         R17 K48 [{"name", "story"}]
      153 LOADK                            R18 K39 ["Default"]
      154 SETTABLEKS                       R18 R17 K25 ["name"]
      156 LOADK                            R19 K39 ["Default"]
      157 NEWCLOSURE                       R18 P3
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R10
      162 SETTABLEKS                       R18 R17 K47 ["story"]
      164 DUPTABLE                         R18 K48 [{"name", "story"}]
      165 LOADK                            R19 K40 ["Warning"]
      166 SETTABLEKS                       R19 R18 K25 ["name"]
      168 LOADK                            R20 K40 ["Warning"]
      169 NEWCLOSURE                       R19 P3
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R10
      174 SETTABLEKS                       R19 R18 K47 ["story"]
      176 DUPTABLE                         R19 K48 [{"name", "story"}]
      177 LOADK                            R20 K41 ["Critical"]
      178 SETTABLEKS                       R20 R19 K25 ["name"]
      180 LOADK                            R21 K41 ["Critical"]
      181 NEWCLOSURE                       R20 P3
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R10
      186 SETTABLEKS                       R20 R19 K47 ["story"]
      188 SETLIST                          R15 R16 4 [1]
      190 SETTABLEKS                       R15 R14 K28 ["stories"]
      192 RETURN                           R14 1
