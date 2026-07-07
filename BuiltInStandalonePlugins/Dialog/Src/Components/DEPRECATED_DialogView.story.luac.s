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
        2 DUPTABLE                         R2 K8 [{[1], ["title"] = "Dialog Title", ["description"] = "This is a description for the dialog. It provides more details about the purpose of the dialog.", ["primaryAction"], ["secondaryAction"], ["tertiaryAction"]}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["type"]
        6 DUPTABLE                         R3 K13 [{["uri"], ["text"] = "Primary", ["onActivated"]}]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K14 ["fromWidget"]
       10 LOADK                            R5 K15 ["Dialog"]
       11 LOADK                            R6 K11 ["Primary"]
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K9 ["uri"]
       15 DUPCLOSURE                       R4 K16 [PROTO_0]
       16 SETTABLEKS                       R4 R3 K12 ["onActivated"]
       18 SETTABLEKS                       R3 R2 K5 ["primaryAction"]
       20 DUPTABLE                         R3 K18 [{["uri"], ["text"] = "Secondary", ["onActivated"]}]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K14 ["fromWidget"]
       24 LOADK                            R5 K15 ["Dialog"]
       25 LOADK                            R6 K17 ["Secondary"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K9 ["uri"]
       29 DUPCLOSURE                       R4 K19 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K12 ["onActivated"]
       32 SETTABLEKS                       R3 R2 K6 ["secondaryAction"]
       34 DUPTABLE                         R3 K21 [{["uri"], ["text"] = "Tertiary", ["onActivated"]}]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K14 ["fromWidget"]
       38 LOADK                            R5 K15 ["Dialog"]
       39 LOADK                            R6 K20 ["Tertiary"]
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K9 ["uri"]
       43 DUPCLOSURE                       R4 K22 [PROTO_2]
       44 SETTABLEKS                       R4 R3 K12 ["onActivated"]
       46 SETTABLEKS                       R3 R2 K7 ["tertiaryAction"]
       48 CALL                             R0 2 -1
       49 RETURN                           R0 -1

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
       13 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_DialogView"]
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
       47 DUPTABLE                         R8 K21 [{["name"] = "DialogView", ["controls"], ["stories"]}]
       48 DUPTABLE                         R9 K33 [{["type"], ["title"] = "Save changes to Place1?", ["description"] = "", ["primaryActionText"] = "Save", ["secondaryActionText"] = "Don't save", ["tertiaryActionText"] = "Cancel"}]
       49 NEWTABLE                         R10 0 3
       51 LOADK                            R11 K34 ["Default"]
       52 LOADK                            R12 K35 ["Warning"]
       53 LOADK                            R13 K36 ["Critical"]
       54 SETLIST                          R10 R11 3 [1]
       56 SETTABLEKS                       R10 R9 K22 ["type"]
       58 SETTABLEKS                       R9 R8 K19 ["controls"]
       60 NEWTABLE                         R9 0 4
       62 DUPTABLE                         R10 K39 [{["name"] = "Configurable", ["story"]}]
       63 DUPCLOSURE                       R11 K40 [PROTO_8]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R11 R10 K38 ["story"]
       69 DUPTABLE                         R11 K41 [{["name"] = "Default", ["story"]}]
       70 LOADK                            R13 K34 ["Default"]
       71 NEWCLOSURE                       R12 P2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R12 R11 K38 ["story"]
       78 DUPTABLE                         R12 K42 [{["name"] = "Warning", ["story"]}]
       79 LOADK                            R14 K35 ["Warning"]
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R13 R12 K38 ["story"]
       87 DUPTABLE                         R13 K43 [{["name"] = "Critical", ["story"]}]
       88 LOADK                            R15 K36 ["Critical"]
       89 NEWCLOSURE                       R14 P2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R14 R13 K38 ["story"]
       96 SETLIST                          R9 R10 4 [1]
       98 SETTABLEKS                       R9 R8 K20 ["stories"]
      100 RETURN                           R8 1
