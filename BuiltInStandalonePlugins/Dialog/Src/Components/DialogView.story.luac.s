PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K6 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["type"]
        6 LOADK                            R3 K7 ["Dialog Title"]
        7 SETTABLEKS                       R3 R2 K1 ["title"]
        9 LOADK                            R3 K8 ["This is a description for the dialog. It provides more details about the purpose of the dialog."]
       10 SETTABLEKS                       R3 R2 K2 ["description"]
       12 DUPTABLE                         R3 K12 [{"uri", "text", "onActivated"}]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K13 ["fromWidget"]
       16 LOADK                            R5 K14 ["Dialog"]
       17 LOADK                            R6 K15 ["Primary"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K9 ["uri"]
       21 LOADK                            R4 K15 ["Primary"]
       22 SETTABLEKS                       R4 R3 K10 ["text"]
       24 DUPCLOSURE                       R4 K16 [PROTO_0]
       25 SETTABLEKS                       R4 R3 K11 ["onActivated"]
       27 SETTABLEKS                       R3 R2 K3 ["primaryAction"]
       29 DUPTABLE                         R3 K12 [{"uri", "text", "onActivated"}]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K13 ["fromWidget"]
       33 LOADK                            R5 K14 ["Dialog"]
       34 LOADK                            R6 K17 ["Secondary"]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K9 ["uri"]
       38 LOADK                            R4 K17 ["Secondary"]
       39 SETTABLEKS                       R4 R3 K10 ["text"]
       41 DUPCLOSURE                       R4 K18 [PROTO_1]
       42 SETTABLEKS                       R4 R3 K11 ["onActivated"]
       44 SETTABLEKS                       R3 R2 K4 ["secondaryAction"]
       46 DUPTABLE                         R3 K12 [{"uri", "text", "onActivated"}]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R4 R4 K13 ["fromWidget"]
       50 LOADK                            R5 K14 ["Dialog"]
       51 LOADK                            R6 K19 ["Tertiary"]
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K9 ["uri"]
       55 LOADK                            R4 K19 ["Tertiary"]
       56 SETTABLEKS                       R4 R3 K10 ["text"]
       58 DUPCLOSURE                       R4 K20 [PROTO_2]
       59 SETTABLEKS                       R4 R3 K11 ["onActivated"]
       61 SETTABLEKS                       R3 R2 K5 ["tertiaryAction"]
       63 CALL                             R0 2 -1
       64 RETURN                           R0 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R2 R1 K1 ["story"]
       10 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction"}]
        3 GETTABLEKS                       R4 R0 K7 ["controls"]
        5 GETTABLEKS                       R4 R4 K0 ["type"]
        7 SETTABLEKS                       R4 R3 K0 ["type"]
        9 GETTABLEKS                       R4 R0 K7 ["controls"]
       11 GETTABLEKS                       R4 R4 K1 ["title"]
       13 SETTABLEKS                       R4 R3 K1 ["title"]
       15 GETTABLEKS                       R4 R0 K7 ["controls"]
       17 GETTABLEKS                       R4 R4 K2 ["description"]
       19 SETTABLEKS                       R4 R3 K2 ["description"]
       21 GETTABLEKS                       R5 R0 K7 ["controls"]
       23 GETTABLEKS                       R5 R5 K8 ["primaryActionText"]
       25 JUMPIFEQKS                       R5 K9 [""] ; [+20]
       27 DUPTABLE                         R4 K13 [{"uri", "text", "onActivated"}]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K14 ["fromWidget"]
       31 LOADK                            R6 K15 ["Dialog"]
       32 LOADK                            R7 K16 ["Primary"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K10 ["uri"]
       36 GETTABLEKS                       R5 R0 K7 ["controls"]
       38 GETTABLEKS                       R5 R5 K8 ["primaryActionText"]
       40 SETTABLEKS                       R5 R4 K11 ["text"]
       42 DUPCLOSURE                       R5 K17 [PROTO_5]
       43 SETTABLEKS                       R5 R4 K12 ["onActivated"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K3 ["primaryAction"]
       49 GETTABLEKS                       R5 R0 K7 ["controls"]
       51 GETTABLEKS                       R5 R5 K18 ["secondaryActionText"]
       53 JUMPIFEQKS                       R5 K9 [""] ; [+20]
       55 DUPTABLE                         R4 K13 [{"uri", "text", "onActivated"}]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K14 ["fromWidget"]
       59 LOADK                            R6 K15 ["Dialog"]
       60 LOADK                            R7 K19 ["Secondary"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K10 ["uri"]
       64 GETTABLEKS                       R5 R0 K7 ["controls"]
       66 GETTABLEKS                       R5 R5 K18 ["secondaryActionText"]
       68 SETTABLEKS                       R5 R4 K11 ["text"]
       70 DUPCLOSURE                       R5 K20 [PROTO_6]
       71 SETTABLEKS                       R5 R4 K12 ["onActivated"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R4
       75 SETTABLEKS                       R4 R3 K4 ["secondaryAction"]
       77 GETTABLEKS                       R5 R0 K7 ["controls"]
       79 GETTABLEKS                       R5 R5 K21 ["tertiaryActionText"]
       81 JUMPIFEQKS                       R5 K9 [""] ; [+20]
       83 DUPTABLE                         R4 K13 [{"uri", "text", "onActivated"}]
       84 GETUPVAL                         R5 2
       85 GETTABLEKS                       R5 R5 K14 ["fromWidget"]
       87 LOADK                            R6 K15 ["Dialog"]
       88 LOADK                            R7 K22 ["Tertiary"]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K10 ["uri"]
       92 GETTABLEKS                       R5 R0 K7 ["controls"]
       94 GETTABLEKS                       R5 R5 K21 ["tertiaryActionText"]
       96 SETTABLEKS                       R5 R4 K11 ["text"]
       98 DUPCLOSURE                       R5 K23 [PROTO_7]
       99 SETTABLEKS                       R5 R4 K12 ["onActivated"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R4
      103 SETTABLEKS                       R4 R3 K5 ["tertiaryAction"]
      105 CALL                             R1 2 -1
      106 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["DialogView"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["StudioFoundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 GETTABLEKS                       R6 R2 K15 ["createElement"]
       43 DUPCLOSURE                       R7 K16 [PROTO_4]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 DUPTABLE                         R8 K20 [{"name", "controls", "stories"}]
       48 LOADK                            R9 K7 ["DialogView"]
       49 SETTABLEKS                       R9 R8 K17 ["name"]
       51 DUPTABLE                         R9 K27 [{"type", "title", "description", "primaryActionText", "secondaryActionText", "tertiaryActionText"}]
       52 NEWTABLE                         R10 0 3
       54 LOADK                            R11 K28 ["Default"]
       55 LOADK                            R12 K29 ["Warning"]
       56 LOADK                            R13 K30 ["Critical"]
       57 SETLIST                          R10 R11 3 [1]
       59 SETTABLEKS                       R10 R9 K21 ["type"]
       61 LOADK                            R10 K31 ["Save changes to Place1?"]
       62 SETTABLEKS                       R10 R9 K22 ["title"]
       64 LOADK                            R10 K32 [""]
       65 SETTABLEKS                       R10 R9 K23 ["description"]
       67 LOADK                            R10 K33 ["Save"]
       68 SETTABLEKS                       R10 R9 K24 ["primaryActionText"]
       70 LOADK                            R10 K34 ["Don't save"]
       71 SETTABLEKS                       R10 R9 K25 ["secondaryActionText"]
       73 LOADK                            R10 K35 ["Cancel"]
       74 SETTABLEKS                       R10 R9 K26 ["tertiaryActionText"]
       76 SETTABLEKS                       R9 R8 K18 ["controls"]
       78 NEWTABLE                         R9 0 4
       80 DUPTABLE                         R10 K37 [{"name", "story"}]
       81 LOADK                            R11 K38 ["Configurable"]
       82 SETTABLEKS                       R11 R10 K17 ["name"]
       84 DUPCLOSURE                       R11 K39 [PROTO_8]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R11 R10 K36 ["story"]
       90 DUPTABLE                         R11 K37 [{"name", "story"}]
       91 LOADK                            R12 K28 ["Default"]
       92 SETTABLEKS                       R12 R11 K17 ["name"]
       94 LOADK                            R13 K28 ["Default"]
       95 NEWCLOSURE                       R12 P2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R12 R11 K36 ["story"]
      102 DUPTABLE                         R12 K37 [{"name", "story"}]
      103 LOADK                            R13 K29 ["Warning"]
      104 SETTABLEKS                       R13 R12 K17 ["name"]
      106 LOADK                            R14 K29 ["Warning"]
      107 NEWCLOSURE                       R13 P2
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R13 R12 K36 ["story"]
      114 DUPTABLE                         R13 K37 [{"name", "story"}]
      115 LOADK                            R14 K30 ["Critical"]
      116 SETTABLEKS                       R14 R13 K17 ["name"]
      118 LOADK                            R15 K30 ["Critical"]
      119 NEWCLOSURE                       R14 P2
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R5
      124 SETTABLEKS                       R14 R13 K36 ["story"]
      126 SETLIST                          R9 R10 4 [1]
      128 SETTABLEKS                       R9 R8 K19 ["stories"]
      130 RETURN                           R8 1
