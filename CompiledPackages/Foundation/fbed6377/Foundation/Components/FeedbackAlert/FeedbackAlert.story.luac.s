PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Action %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Link activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Close activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["controls"]
        4 GETTABLEKS                       R2 R3 K1 ["actionCount"]
        6 LOADN                            R5 1
        7 MOVE                             R3 R2
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 DUPTABLE                         R8 K5 [{"text", "variant", "onActivated"}]
       11 JUMPIFNOTEQKN                    R5 K6 [1] ; [+3]
       13 LOADK                            R9 K7 ["Primary"]
       14 JUMP                             ; [+5]
       15 JUMPIFNOTEQKN                    R5 K8 [2] ; [+3]
       17 LOADK                            R9 K9 ["Secondary"]
       18 JUMP                             ; [+1]
       19 LOADK                            R9 K10 ["Tertiary"]
       20 SETTABLEKS                       R9 R8 K2 ["text"]
       22 JUMPIFNOTEQKN                    R5 K6 [1] ; [+5]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K11 ["Standard"]
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K12 ["Utility"]
       31 SETTABLEKS                       R9 R8 K3 ["variant"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R9 R8 K4 ["onActivated"]
       38 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       40 MOVE                             R7 R1
       41 GETIMPORT                        R6 K15 [table.insert]
       43 CALL                             R6 2 0
       44 FORNLOOP                         R3
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R3 R4 K16 ["createElement"]
       48 GETUPVAL                         R4 3
       49 DUPTABLE                         R5 K24 [{"title", "subtitle", "description", "severity", "link", "actions", "onClose"}]
       50 GETTABLEKS                       R7 R0 K0 ["controls"]
       52 GETTABLEKS                       R6 R7 K17 ["title"]
       54 SETTABLEKS                       R6 R5 K17 ["title"]
       56 GETTABLEKS                       R8 R0 K0 ["controls"]
       58 GETTABLEKS                       R7 R8 K18 ["subtitle"]
       60 JUMPIFEQKS                       R7 K25 [""] ; [+6]
       62 GETTABLEKS                       R7 R0 K0 ["controls"]
       64 GETTABLEKS                       R6 R7 K18 ["subtitle"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R5 K18 ["subtitle"]
       70 GETTABLEKS                       R8 R0 K0 ["controls"]
       72 GETTABLEKS                       R7 R8 K19 ["description"]
       74 JUMPIFEQKS                       R7 K25 [""] ; [+6]
       76 GETTABLEKS                       R7 R0 K0 ["controls"]
       78 GETTABLEKS                       R6 R7 K19 ["description"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R6
       82 SETTABLEKS                       R6 R5 K19 ["description"]
       84 GETUPVAL                         R6 4
       85 SETTABLEKS                       R6 R5 K20 ["severity"]
       87 GETTABLEKS                       R8 R0 K0 ["controls"]
       89 GETTABLEKS                       R7 R8 K26 ["linkText"]
       91 JUMPIFEQKS                       R7 K25 [""] ; [+13]
       93 DUPTABLE                         R6 K27 [{"text", "onActivated"}]
       94 GETTABLEKS                       R8 R0 K0 ["controls"]
       96 GETTABLEKS                       R7 R8 K26 ["linkText"]
       98 SETTABLEKS                       R7 R6 K2 ["text"]
      100 NEWCLOSURE                       R7 P1
      101 CAPTURE                          UPVAL U1
      102 SETTABLEKS                       R7 R6 K4 ["onActivated"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K21 ["link"]
      108 LENGTH                           R7 R1
      109 LOADN                            R8 0
      110 JUMPIFNOTLT                      R8 R7 ; [+3]
      112 MOVE                             R6 R1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R6
      115 SETTABLEKS                       R6 R5 K22 ["actions"]
      117 GETTABLEKS                       R8 R0 K0 ["controls"]
      119 GETTABLEKS                       R7 R8 K28 ["hasCloseAffordance"]
      121 JUMPIFNOT                        R7 ; [+3]
      122 NEWCLOSURE                       R6 P2
      123 CAPTURE                          UPVAL U1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R6
      126 SETTABLEKS                       R6 R5 K23 ["onClose"]
      128 CALL                             R3 2 -1
      129 RETURN                           R3 -1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"name", "story"}]
        1 SETTABLEKS                       R1 R2 K0 ["name"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["story"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["AlertSeverity"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K11 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["FeedbackAlert"]
       39 CALL                             R6 1 1
       40 DUPTABLE                         R7 K17 [{"summary", "stories", "controls"}]
       41 LOADK                            R8 K13 ["FeedbackAlert"]
       42 SETTABLEKS                       R8 R7 K14 ["summary"]
       44 GETTABLEKS                       R8 R2 K18 ["map"]
       46 MOVE                             R9 R4
       47 DUPCLOSURE                       R10 K19 [PROTO_4]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K15 ["stories"]
       54 DUPTABLE                         R8 K26 [{"title", "subtitle", "description", "linkText", "actionCount", "hasCloseAffordance"}]
       55 LOADK                            R9 K27 ["Title"]
       56 SETTABLEKS                       R9 R8 K20 ["title"]
       58 LOADK                            R9 K28 ["Description"]
       59 SETTABLEKS                       R9 R8 K21 ["subtitle"]
       61 LOADK                            R9 K29 ["InlineAlerts are displayed in-line with page content. e.g., a form error. It is immediate feedback that's tied to page content."]
       62 SETTABLEKS                       R9 R8 K22 ["description"]
       64 LOADK                            R9 K30 ["Link"]
       65 SETTABLEKS                       R9 R8 K23 ["linkText"]
       67 NEWTABLE                         R9 0 4
       69 LOADN                            R10 0
       70 LOADN                            R11 1
       71 LOADN                            R12 2
       72 LOADN                            R13 3
       73 SETLIST                          R9 R10 4 [1]
       75 SETTABLEKS                       R9 R8 K24 ["actionCount"]
       77 LOADB                            R9 1
       78 SETTABLEKS                       R9 R8 K25 ["hasCloseAffordance"]
       80 SETTABLEKS                       R8 R7 K16 ["controls"]
       82 RETURN                           R7 1
