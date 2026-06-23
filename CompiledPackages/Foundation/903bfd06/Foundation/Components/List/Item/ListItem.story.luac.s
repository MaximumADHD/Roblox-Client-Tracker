PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["ListItem activated"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R4 R0 K1 ["controls"]
        7 GETTABLEKS                       R4 R4 K2 ["leading"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["Avatar"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+11]
       14 DUPTABLE                         R3 K6 [{"type", "userId"}]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["Avatar"]
       18 SETTABLEKS                       R4 R3 K4 ["type"]
       20 LOADK                            R4 K7 [24813339]
       21 SETTABLEKS                       R4 R3 K5 ["userId"]
       23 JUMP                             ; [+29]
       24 GETTABLEKS                       R4 R0 K1 ["controls"]
       26 GETTABLEKS                       R4 R4 K2 ["leading"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K8 ["Media"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+6]
       33 DUPTABLE                         R3 K10 [{"iconName"}]
       34 LOADK                            R4 K11 ["rbxthumb://type=GameIcon&id=1818&w=150&h=150"]
       35 SETTABLEKS                       R4 R3 K9 ["iconName"]
       37 JUMP                             ; [+15]
       38 GETTABLEKS                       R4 R0 K1 ["controls"]
       40 GETTABLEKS                       R4 R4 K2 ["leading"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K12 ["None"]
       45 JUMPIFEQ                         R4 R5 ; [+6]
       47 GETTABLEKS                       R3 R0 K1 ["controls"]
       49 GETTABLEKS                       R3 R3 K2 ["leading"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R3
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K13 ["createElement"]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K14 ["Provider"]
       59 DUPTABLE                         R6 K16 [{"value"}]
       60 DUPTABLE                         R7 K18 [{"size"}]
       61 GETTABLEKS                       R8 R0 K1 ["controls"]
       63 GETTABLEKS                       R8 R8 K17 ["size"]
       65 SETTABLEKS                       R8 R7 K17 ["size"]
       67 SETTABLEKS                       R7 R6 K15 ["value"]
       69 DUPTABLE                         R7 K20 [{"ListItem"}]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K13 ["createElement"]
       73 GETUPVAL                         R9 3
       74 GETTABLEKS                       R9 R9 K21 ["Item"]
       76 DUPTABLE                         R10 K25 [{"leading", "title", "description", "onActivated"}]
       77 SETTABLEKS                       R3 R10 K2 ["leading"]
       79 DUPTABLE                         R11 K27 [{"title", "metadata"}]
       80 GETTABLEKS                       R13 R0 K1 ["controls"]
       82 GETTABLEKS                       R13 R13 K22 ["title"]
       84 JUMPIFNOTEQKS                    R13 K28 [""] ; [+3]
       86 LOADNIL                          R12
       87 JUMP                             ; [+4]
       88 GETTABLEKS                       R12 R0 K1 ["controls"]
       90 GETTABLEKS                       R12 R12 K22 ["title"]
       92 SETTABLEKS                       R12 R11 K22 ["title"]
       94 GETTABLEKS                       R13 R0 K1 ["controls"]
       96 GETTABLEKS                       R13 R13 K26 ["metadata"]
       98 JUMPIFNOTEQKS                    R13 K28 [""] ; [+3]
      100 LOADNIL                          R12
      101 JUMP                             ; [+4]
      102 GETTABLEKS                       R12 R0 K1 ["controls"]
      104 GETTABLEKS                       R12 R12 K26 ["metadata"]
      106 SETTABLEKS                       R12 R11 K26 ["metadata"]
      108 SETTABLEKS                       R11 R10 K22 ["title"]
      110 GETTABLEKS                       R12 R0 K1 ["controls"]
      112 GETTABLEKS                       R12 R12 K23 ["description"]
      114 JUMPIFNOTEQKS                    R12 K28 [""] ; [+3]
      116 LOADNIL                          R11
      117 JUMP                             ; [+4]
      118 GETTABLEKS                       R11 R0 K1 ["controls"]
      120 GETTABLEKS                       R11 R11 K23 ["description"]
      122 SETTABLEKS                       R11 R10 K23 ["description"]
      124 GETTABLEKS                       R12 R0 K1 ["controls"]
      126 GETTABLEKS                       R12 R12 K24 ["onActivated"]
      128 JUMPIFNOT                        R12 ; [+22]
      129 DUPTABLE                         R11 K31 [{"onActivated", "inputType", "isChecked"}]
      130 NEWCLOSURE                       R12 P0
      131 CAPTURE                          VAL R2
      132 SETTABLEKS                       R12 R11 K24 ["onActivated"]
      134 GETTABLEKS                       R13 R0 K1 ["controls"]
      136 GETTABLEKS                       R13 R13 K32 ["listItemInputType"]
      138 JUMPIFEQKS                       R13 K28 [""] ; [+6]
      140 GETTABLEKS                       R12 R0 K1 ["controls"]
      142 GETTABLEKS                       R12 R12 K32 ["listItemInputType"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R12
      146 SETTABLEKS                       R12 R11 K29 ["inputType"]
      148 SETTABLEKS                       R1 R11 K30 ["isChecked"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R11
      152 SETTABLEKS                       R11 R10 K24 ["onActivated"]
      154 CALL                             R8 2 1
      155 SETTABLEKS                       R8 R7 K19 ["ListItem"]
      157 CALL                             R4 3 -1
      158 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["AccessoryType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Enums"]
       35 GETTABLEKS                       R7 R7 K12 ["InputSize"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Enums"]
       42 GETTABLEKS                       R8 R8 K13 ["ListItemInputType"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["List"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K14 ["Components"]
       56 GETTABLEKS                       R10 R10 K15 ["List"]
       58 GETTABLEKS                       R10 R10 K16 ["ListContext"]
       60 CALL                             R9 1 1
       61 NEWTABLE                         R10 0 3
       63 GETTABLEKS                       R11 R5 K17 ["Avatar"]
       65 GETTABLEKS                       R12 R5 K18 ["Media"]
       67 GETTABLEKS                       R13 R4 K19 ["None"]
       69 SETLIST                          R10 R11 3 [1]
       71 DUPTABLE                         R11 K23 [{"summary", "stories", "controls"}]
       72 LOADK                            R12 K24 ["ListItem"]
       73 SETTABLEKS                       R12 R11 K20 ["summary"]
       75 DUPTABLE                         R12 K26 [{"Default"}]
       76 DUPTABLE                         R13 K29 [{"name", "story"}]
       77 LOADK                            R14 K25 ["Default"]
       78 SETTABLEKS                       R14 R13 K27 ["name"]
       80 DUPCLOSURE                       R14 K30 [PROTO_2]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R14 R13 K28 ["story"]
       87 SETTABLEKS                       R13 R12 K25 ["Default"]
       89 SETTABLEKS                       R12 R11 K21 ["stories"]
       91 DUPTABLE                         R12 K38 [{"leading", "title", "metadata", "description", "size", "onActivated", "listItemInputType"}]
       92 GETTABLEKS                       R13 R3 K39 ["values"]
       94 GETTABLEKS                       R14 R3 K40 ["join"]
       96 GETTABLEKS                       R15 R2 K41 ["Icon"]
       98 MOVE                             R16 R10
       99 CALL                             R14 2 -1
      100 CALL                             R13 -1 1
      101 SETTABLEKS                       R13 R12 K31 ["leading"]
      103 LOADK                            R13 K42 ["List Item Title"]
      104 SETTABLEKS                       R13 R12 K32 ["title"]
      106 LOADK                            R13 K43 ["List Item Metadata"]
      107 SETTABLEKS                       R13 R12 K33 ["metadata"]
      109 LOADK                            R13 K44 ["The title prop can be a string or an object with a title and metadata field."]
      110 SETTABLEKS                       R13 R12 K34 ["description"]
      112 GETTABLEKS                       R13 R3 K39 ["values"]
      114 MOVE                             R14 R6
      115 CALL                             R13 1 1
      116 SETTABLEKS                       R13 R12 K35 ["size"]
      118 LOADB                            R13 0
      119 SETTABLEKS                       R13 R12 K36 ["onActivated"]
      121 GETTABLEKS                       R13 R3 K39 ["values"]
      123 GETTABLEKS                       R14 R3 K40 ["join"]
      125 MOVE                             R15 R7
      126 NEWTABLE                         R16 0 1
      128 LOADK                            R17 K45 [""]
      129 SETLIST                          R16 R17 1 [1]
      131 CALL                             R14 2 -1
      132 CALL                             R13 -1 1
      133 SETTABLEKS                       R13 R12 K37 ["listItemInputType"]
      135 SETTABLEKS                       R12 R11 K22 ["controls"]
      137 RETURN                           R11 1
