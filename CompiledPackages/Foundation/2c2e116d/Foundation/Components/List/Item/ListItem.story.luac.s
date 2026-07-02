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
       12 JUMPIFNOTEQ                      R4 R5 ; [+8]
       14 DUPTABLE                         R3 K7 [{["type"], ["userId"] = 24813339}]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["Avatar"]
       18 SETTABLEKS                       R4 R3 K4 ["type"]
       20 JUMP                             ; [+26]
       21 GETTABLEKS                       R4 R0 K1 ["controls"]
       23 GETTABLEKS                       R4 R4 K2 ["leading"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K8 ["Media"]
       28 JUMPIFNOTEQ                      R4 R5 ; [+3]
       30 DUPTABLE                         R3 K11 [{["iconName"] = "rbxthumb://type=GameIcon&id=1818&w=150&h=150"}]
       31 JUMP                             ; [+15]
       32 GETTABLEKS                       R4 R0 K1 ["controls"]
       34 GETTABLEKS                       R4 R4 K2 ["leading"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K12 ["None"]
       39 JUMPIFEQ                         R4 R5 ; [+6]
       41 GETTABLEKS                       R3 R0 K1 ["controls"]
       43 GETTABLEKS                       R3 R3 K2 ["leading"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R3
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K13 ["createElement"]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K14 ["Provider"]
       53 DUPTABLE                         R6 K16 [{"value"}]
       54 DUPTABLE                         R7 K18 [{"size"}]
       55 GETTABLEKS                       R8 R0 K1 ["controls"]
       57 GETTABLEKS                       R8 R8 K17 ["size"]
       59 SETTABLEKS                       R8 R7 K17 ["size"]
       61 SETTABLEKS                       R7 R6 K15 ["value"]
       63 DUPTABLE                         R7 K20 [{"ListItem"}]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K13 ["createElement"]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K21 ["Item"]
       70 DUPTABLE                         R10 K25 [{"leading", "title", "description", "onActivated"}]
       71 SETTABLEKS                       R3 R10 K2 ["leading"]
       73 DUPTABLE                         R11 K27 [{"title", "metadata"}]
       74 GETTABLEKS                       R13 R0 K1 ["controls"]
       76 GETTABLEKS                       R13 R13 K22 ["title"]
       78 JUMPIFNOTEQKS                    R13 K28 [""] ; [+3]
       80 LOADNIL                          R12
       81 JUMP                             ; [+4]
       82 GETTABLEKS                       R12 R0 K1 ["controls"]
       84 GETTABLEKS                       R12 R12 K22 ["title"]
       86 SETTABLEKS                       R12 R11 K22 ["title"]
       88 GETTABLEKS                       R13 R0 K1 ["controls"]
       90 GETTABLEKS                       R13 R13 K26 ["metadata"]
       92 JUMPIFNOTEQKS                    R13 K28 [""] ; [+3]
       94 LOADNIL                          R12
       95 JUMP                             ; [+4]
       96 GETTABLEKS                       R12 R0 K1 ["controls"]
       98 GETTABLEKS                       R12 R12 K26 ["metadata"]
      100 SETTABLEKS                       R12 R11 K26 ["metadata"]
      102 SETTABLEKS                       R11 R10 K22 ["title"]
      104 GETTABLEKS                       R12 R0 K1 ["controls"]
      106 GETTABLEKS                       R12 R12 K23 ["description"]
      108 JUMPIFNOTEQKS                    R12 K28 [""] ; [+3]
      110 LOADNIL                          R11
      111 JUMP                             ; [+4]
      112 GETTABLEKS                       R11 R0 K1 ["controls"]
      114 GETTABLEKS                       R11 R11 K23 ["description"]
      116 SETTABLEKS                       R11 R10 K23 ["description"]
      118 GETTABLEKS                       R12 R0 K1 ["controls"]
      120 GETTABLEKS                       R12 R12 K24 ["onActivated"]
      122 JUMPIFNOT                        R12 ; [+22]
      123 DUPTABLE                         R11 K31 [{"onActivated", "inputType", "isChecked"}]
      124 NEWCLOSURE                       R12 P0
      125 CAPTURE                          VAL R2
      126 SETTABLEKS                       R12 R11 K24 ["onActivated"]
      128 GETTABLEKS                       R13 R0 K1 ["controls"]
      130 GETTABLEKS                       R13 R13 K32 ["listItemInputType"]
      132 JUMPIFEQKS                       R13 K28 [""] ; [+6]
      134 GETTABLEKS                       R12 R0 K1 ["controls"]
      136 GETTABLEKS                       R12 R12 K32 ["listItemInputType"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R12
      140 SETTABLEKS                       R12 R11 K29 ["inputType"]
      142 SETTABLEKS                       R1 R11 K30 ["isChecked"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R11
      146 SETTABLEKS                       R11 R10 K24 ["onActivated"]
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K19 ["ListItem"]
      151 CALL                             R4 3 -1
      152 RETURN                           R4 -1

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
       71 DUPTABLE                         R11 K24 [{["summary"] = "ListItem", ["stories"], ["controls"]}]
       72 DUPTABLE                         R12 K26 [{"Default"}]
       73 DUPTABLE                         R13 K29 [{["name"] = "Default", ["story"]}]
       74 DUPCLOSURE                       R14 K30 [PROTO_2]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R14 R13 K28 ["story"]
       81 SETTABLEKS                       R13 R12 K25 ["Default"]
       83 SETTABLEKS                       R12 R11 K22 ["stories"]
       85 DUPTABLE                         R12 K42 [{["leading"], ["title"] = "List Item Title", ["metadata"] = "List Item Metadata", ["description"] = "The title prop can be a string or an object with a title and metadata field.", ["size"], ["onActivated"] = False, ["listItemInputType"]}]
       86 GETTABLEKS                       R13 R3 K43 ["values"]
       88 GETTABLEKS                       R14 R3 K44 ["join"]
       90 GETTABLEKS                       R15 R2 K45 ["Icon"]
       92 MOVE                             R16 R10
       93 CALL                             R14 2 -1
       94 CALL                             R13 -1 1
       95 SETTABLEKS                       R13 R12 K31 ["leading"]
       97 GETTABLEKS                       R13 R3 K43 ["values"]
       99 MOVE                             R14 R6
      100 CALL                             R13 1 1
      101 SETTABLEKS                       R13 R12 K38 ["size"]
      103 GETTABLEKS                       R13 R3 K43 ["values"]
      105 GETTABLEKS                       R14 R3 K44 ["join"]
      107 MOVE                             R15 R7
      108 NEWTABLE                         R16 0 1
      110 LOADK                            R17 K46 [""]
      111 SETLIST                          R16 R17 1 [1]
      113 CALL                             R14 2 -1
      114 CALL                             R13 -1 1
      115 SETTABLEKS                       R13 R12 K41 ["listItemInputType"]
      117 SETTABLEKS                       R12 R11 K23 ["controls"]
      119 RETURN                           R11 1
