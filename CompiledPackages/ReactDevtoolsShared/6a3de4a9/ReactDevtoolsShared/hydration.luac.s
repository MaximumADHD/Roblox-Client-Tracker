PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["!!! "]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K4 [" was called, but is stubbed! "]
       13 CONCAT                           R2 R3 R5
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
        2 MOVE                             R6 R3
        3 MOVE                             R7 R4
        4 GETIMPORT                        R5 K2 [table.insert]
        6 CALL                             R5 2 0
        7 DUPTABLE                         R5 K8 [{"inspectable", "type", "preview_long", "preview_short", "name"}]
        8 SETTABLEKS                       R1 R5 K3 ["inspectable"]
       10 SETTABLEKS                       R0 R5 K4 ["type"]
       12 GETUPVAL                         R6 0
       13 MOVE                             R7 R2
       14 LOADB                            R8 1
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K5 ["preview_long"]
       18 GETUPVAL                         R6 0
       19 MOVE                             R7 R2
       20 LOADB                            R8 0
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K6 ["preview_short"]
       24 GETTABLEKS                       R7 R2 K9 ["constructor"]
       26 JUMPIFNOT                        R7 ; [+6]
       27 GETTABLEKS                       R7 R2 K9 ["constructor"]
       29 GETTABLEKS                       R7 R7 K7 ["name"]
       31 JUMPIFNOTEQKS                    R7 K10 ["Object"] ; [+3]
       33 LOADK                            R6 K11 [""]
       34 JUMP                             ; [+4]
       35 GETTABLEKS                       R6 R2 K9 ["constructor"]
       37 GETTABLEKS                       R6 R6 K7 ["name"]
       39 SETTABLEKS                       R6 R5 K7 ["name"]
       41 JUMPIFEQKS                       R0 K12 ["array"] ; [+3]
       43 JUMPIFNOTEQKS                    R0 K13 ["typed_array"] ; [+6]
       45 GETTABLEKS                       R6 R2 K14 ["length"]
       47 SETTABLEKS                       R6 R5 K15 ["size"]
       49 JUMP                             ; [+11]
       50 JUMPIFNOTEQKS                    R0 K16 ["object"] ; [+10]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K17 ["keys"]
       55 MOVE                             R7 R2
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R6 R6 K14 ["length"]
       59 SETTABLEKS                       R6 R5 K15 ["size"]
       61 JUMPIFEQKS                       R0 K18 ["iterator"] ; [+3]
       63 JUMPIFNOTEQKS                    R0 K13 ["typed_array"] ; [+4]
       65 LOADB                            R6 1
       66 SETTABLEKS                       R6 R5 K19 ["readonly"]
       68 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dehydrate"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R6 3
        7 GETTABLEKS                       R6 R6 K1 ["concat"]
        9 GETUPVAL                         R7 4
       10 MOVE                             R8 R1
       11 CALL                             R6 2 1
       12 GETUPVAL                         R7 5
       13 GETUPVAL                         R9 6
       14 JUMPIFNOT                        R9 ; [+2]
       15 LOADN                            R8 1
       16 JUMP                             ; [+2]
       17 GETUPVAL                         R9 7
       18 ADDK                             R8 R9 K2 [1]
       19 CALL                             R2 6 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["dehydrate"]
        9 GETUPVAL                         R5 2
       10 GETTABLE                         R4 R5 R0
       11 GETUPVAL                         R5 3
       12 GETUPVAL                         R6 4
       13 GETUPVAL                         R7 5
       14 GETTABLEKS                       R7 R7 K3 ["concat"]
       16 GETUPVAL                         R8 6
       17 MOVE                             R9 R1
       18 CALL                             R7 2 1
       19 GETUPVAL                         R8 7
       20 GETUPVAL                         R10 8
       21 JUMPIFNOT                        R10 ; [+2]
       22 LOADN                            R9 1
       23 JUMP                             ; [+2]
       24 GETUPVAL                         R10 9
       25 ADDK                             R9 R10 K4 [1]
       26 CALL                             R3 6 1
       27 SETTABLE                         R3 R2 R1
       28 RETURN                           R0 0

PROTO_4:
        0 ORK                              R6 R5 K0 [0]
        1 GETUPVAL                         R7 0
        2 MOVE                             R8 R0
        3 CALL                             R7 1 1
        4 LOADNIL                          R8
        5 JUMPIFNOTEQKS                    R7 K1 ["function"] ; [+32]
        7 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
        9 MOVE                             R10 R1
       10 MOVE                             R11 R3
       11 GETIMPORT                        R9 K4 [table.insert]
       13 CALL                             R9 2 0
       14 GETIMPORT                        R9 K7 [debug.info]
       16 MOVE                             R10 R0
       17 LOADK                            R11 K8 ["n"]
       18 CALL                             R9 2 1
       19 DUPTABLE                         R10 K15 [{["inspectable"] = False, ["preview_short"], ["preview_long"], ["name"], ["type"]}]
       20 GETUPVAL                         R11 1
       21 MOVE                             R12 R0
       22 LOADB                            R13 0
       23 CALL                             R11 2 1
       24 SETTABLEKS                       R11 R10 K11 ["preview_short"]
       26 GETUPVAL                         R11 1
       27 MOVE                             R12 R0
       28 LOADB                            R13 1
       29 CALL                             R11 2 1
       30 SETTABLEKS                       R11 R10 K12 ["preview_long"]
       32 SETTABLEKS                       R9 R10 K13 ["name"]
       34 SETTABLEKS                       R7 R10 K14 ["type"]
       36 CLOSEUPVALS                      R8
       37 RETURN                           R10 1
       38 JUMPIFNOTEQKS                    R7 K16 ["string"] ; [+18]
       40 LENGTH                           R10 R0
       41 LOADN                            R11 500
       42 JUMPIFNOTLE                      R10 R11 ; [+3]
       44 MOVE                             R9 R0
       45 JUMP                             ; [+9]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K17 ["slice"]
       49 MOVE                             R11 R0
       50 LOADN                            R12 0
       51 LOADN                            R13 500
       52 CALL                             R10 3 1
       53 LOADK                            R11 K18 ["..."]
       54 CONCAT                           R9 R10 R11
       55 CLOSEUPVALS                      R8
       56 RETURN                           R9 1
       57 JUMPIFNOTEQKS                    R7 K19 ["react_element"] ; [+31]
       59 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       61 MOVE                             R10 R1
       62 MOVE                             R11 R3
       63 GETIMPORT                        R9 K4 [table.insert]
       65 CALL                             R9 2 0
       66 DUPTABLE                         R9 K15 [{["inspectable"] = False, ["preview_short"], ["preview_long"], ["name"], ["type"]}]
       67 GETUPVAL                         R10 1
       68 MOVE                             R11 R0
       69 LOADB                            R12 0
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K11 ["preview_short"]
       73 GETUPVAL                         R10 1
       74 MOVE                             R11 R0
       75 LOADB                            R12 1
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K12 ["preview_long"]
       79 GETUPVAL                         R11 3
       80 MOVE                             R12 R0
       81 CALL                             R11 1 1
       82 ORK                              R10 R11 K20 ["Unknown"]
       83 SETTABLEKS                       R10 R9 K13 ["name"]
       85 SETTABLEKS                       R7 R9 K14 ["type"]
       87 CLOSEUPVALS                      R8
       88 RETURN                           R9 1
       89 JUMPIFNOTEQKS                    R7 K21 ["array"] ; [+36]
       91 MOVE                             R9 R4
       92 MOVE                             R10 R3
       93 CALL                             R9 1 1
       94 MOVE                             R8 R9
       95 LOADN                            R9 2
       96 JUMPIFNOTLE                      R9 R6 ; [+13]
       98 JUMPIF                           R8 ; [+11]
       99 GETUPVAL                         R9 4
      100 GETTABLEKS                       R9 R9 K22 ["createDehydrated"]
      102 MOVE                             R10 R7
      103 LOADB                            R11 1
      104 MOVE                             R12 R0
      105 MOVE                             R13 R1
      106 MOVE                             R14 R3
      107 CALL                             R9 5 -1
      108 CLOSEUPVALS                      R8
      109 RETURN                           R9 -1
      110 GETUPVAL                         R9 5
      111 GETTABLEKS                       R9 R9 K23 ["map"]
      113 MOVE                             R10 R0
      114 NEWCLOSURE                       R11 P0
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          UPVAL U5
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 CAPTURE                          REF R8
      122 CAPTURE                          VAL R6
      123 CALL                             R9 2 -1
      124 CLOSEUPVALS                      R8
      125 RETURN                           R9 -1
      126 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+42]
      128 MOVE                             R9 R4
      129 MOVE                             R10 R3
      130 CALL                             R9 1 1
      131 MOVE                             R8 R9
      132 LOADN                            R9 2
      133 JUMPIFNOTLE                      R9 R6 ; [+13]
      135 JUMPIF                           R8 ; [+11]
      136 GETUPVAL                         R9 4
      137 GETTABLEKS                       R9 R9 K22 ["createDehydrated"]
      139 MOVE                             R10 R7
      140 LOADB                            R11 1
      141 MOVE                             R12 R0
      142 MOVE                             R13 R1
      143 MOVE                             R14 R3
      144 CALL                             R9 5 -1
      145 CLOSEUPVALS                      R8
      146 RETURN                           R9 -1
      147 NEWTABLE                         R9 0 0
      149 GETUPVAL                         R10 5
      150 GETTABLEKS                       R10 R10 K24 ["forEach"]
      152 GETUPVAL                         R11 6
      153 MOVE                             R12 R0
      154 CALL                             R11 1 1
      155 NEWCLOSURE                       R12 P1
      156 CAPTURE                          VAL R9
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R2
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R4
      164 CAPTURE                          REF R8
      165 CAPTURE                          VAL R6
      166 CALL                             R10 2 0
      167 CLOSEUPVALS                      R8
      168 RETURN                           R9 1
      169 JUMPIFEQKS                       R7 K25 ["infinity"] ; [+5]
      171 JUMPIFEQKS                       R7 K26 ["nan"] ; [+3]
      173 JUMPIFNOTEQKS                    R7 K27 ["nil"] ; [+13]
      175 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
      177 MOVE                             R10 R1
      178 MOVE                             R11 R3
      179 GETIMPORT                        R9 K4 [table.insert]
      181 CALL                             R9 2 0
      182 DUPTABLE                         R9 K28 [{"type"}]
      183 SETTABLEKS                       R7 R9 K14 ["type"]
      185 CLOSEUPVALS                      R8
      186 RETURN                           R9 1
      187 CLOSEUPVALS                      R8
      188 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R5 K3 ["!!! fillInPath was called, but is stubbed! "]
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Symbol"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETTABLEKS                       R5 R1 K9 ["String"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETIMPORT                        R7 K1 [script]
       24 GETTABLEKS                       R7 R7 K2 ["Parent"]
       26 GETTABLEKS                       R7 R7 K10 ["utils"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R6 K11 ["formatDataForPreview"]
       31 GETTABLEKS                       R8 R6 K12 ["getDisplayNameForReactElement"]
       33 GETTABLEKS                       R9 R6 K13 ["getAllEnumerableKeys"]
       35 GETTABLEKS                       R10 R6 K14 ["getDataType"]
       37 DUPCLOSURE                       R11 K15 [PROTO_0]
       38 NEWTABLE                         R12 8 0
       40 DUPTABLE                         R13 K25 [{"inspectable", "inspected", "name", "preview_long", "preview_short", "readonly", "size", "type", "unserializable"}]
       41 MOVE                             R14 R3
       42 LOADK                            R15 K16 ["inspectable"]
       43 CALL                             R14 1 1
       44 SETTABLEKS                       R14 R13 K16 ["inspectable"]
       46 MOVE                             R14 R3
       47 LOADK                            R15 K17 ["inspected"]
       48 CALL                             R14 1 1
       49 SETTABLEKS                       R14 R13 K17 ["inspected"]
       51 MOVE                             R14 R3
       52 LOADK                            R15 K18 ["name"]
       53 CALL                             R14 1 1
       54 SETTABLEKS                       R14 R13 K18 ["name"]
       56 MOVE                             R14 R3
       57 LOADK                            R15 K19 ["preview_long"]
       58 CALL                             R14 1 1
       59 SETTABLEKS                       R14 R13 K19 ["preview_long"]
       61 MOVE                             R14 R3
       62 LOADK                            R15 K20 ["preview_short"]
       63 CALL                             R14 1 1
       64 SETTABLEKS                       R14 R13 K20 ["preview_short"]
       66 MOVE                             R14 R3
       67 LOADK                            R15 K21 ["readonly"]
       68 CALL                             R14 1 1
       69 SETTABLEKS                       R14 R13 K21 ["readonly"]
       71 MOVE                             R14 R3
       72 LOADK                            R15 K22 ["size"]
       73 CALL                             R14 1 1
       74 SETTABLEKS                       R14 R13 K22 ["size"]
       76 MOVE                             R14 R3
       77 LOADK                            R15 K23 ["type"]
       78 CALL                             R14 1 1
       79 SETTABLEKS                       R14 R13 K23 ["type"]
       81 MOVE                             R14 R3
       82 LOADK                            R15 K24 ["unserializable"]
       83 CALL                             R14 1 1
       84 SETTABLEKS                       R14 R13 K24 ["unserializable"]
       86 SETTABLEKS                       R13 R12 K26 ["meta"]
       88 DUPCLOSURE                       R13 K27 [PROTO_1]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R13 R12 K28 ["createDehydrated"]
       93 DUPCLOSURE                       R13 K29 [PROTO_4]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 SETTABLEKS                       R13 R12 K30 ["dehydrate"]
      103 DUPCLOSURE                       R13 K31 [PROTO_5]
      104 SETTABLEKS                       R13 R12 K32 ["fillInPath"]
      106 DUPCLOSURE                       R13 K33 [PROTO_6]
      107 SETTABLEKS                       R13 R12 K34 ["hydrate"]
      109 RETURN                           R12 1
