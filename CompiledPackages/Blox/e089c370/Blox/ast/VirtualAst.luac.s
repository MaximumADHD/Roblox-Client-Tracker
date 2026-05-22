PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 FASTCALL1                        TYPE R6 ; [+3]
        9 MOVE                             R9 R6
       10 GETIMPORT                        R8 K1 [type]
       12 CALL                             R8 1 1
       13 JUMPIFNOTEQKS                    R8 K2 ["string"] ; [+3]
       15 SETTABLE                         R7 R1 R6
       16 JUMP                             ; [+7]
       17 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K5 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-17]
       26 DUPTABLE                         R3 K9 [{"type", "className", "params", "children"}]
       27 LOADK                            R4 K10 ["Instance"]
       28 SETTABLEKS                       R4 R3 K0 ["type"]
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R4 R3 K6 ["className"]
       33 SETTABLEKS                       R1 R3 K7 ["params"]
       35 SETTABLEKS                       R2 R3 K8 ["children"]
       37 RETURN                           R3 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 FASTCALL1                        TYPE R7 ; [+3]
        9 MOVE                             R10 R7
       10 GETIMPORT                        R9 K1 [type]
       12 CALL                             R9 1 1
       13 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+3]
       15 SETTABLE                         R8 R2 R7
       16 JUMP                             ; [+7]
       17 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       19 MOVE                             R10 R3
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K5 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-17]
       26 DUPTABLE                         R4 K10 [{"type", "templateId", "templateAst", "params", "children"}]
       27 LOADK                            R5 K11 ["Ref"]
       28 SETTABLEKS                       R5 R4 K0 ["type"]
       30 LOADK                            R6 K12 ["/custom/%*"]
       31 GETTABLEKS                       R8 R0 K13 ["name"]
       33 NAMECALL                         R6 R6 K14 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 SETTABLEKS                       R5 R4 K6 ["templateId"]
       39 SETTABLEKS                       R0 R4 K7 ["templateAst"]
       41 SETTABLEKS                       R2 R4 K8 ["params"]
       43 SETTABLEKS                       R3 R4 K9 ["children"]
       45 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 FASTCALL1                        TYPE R6 ; [+3]
        9 MOVE                             R9 R6
       10 GETIMPORT                        R8 K1 [type]
       12 CALL                             R8 1 1
       13 JUMPIFNOTEQKS                    R8 K2 ["string"] ; [+3]
       15 SETTABLE                         R7 R1 R6
       16 JUMP                             ; [+7]
       17 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K5 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-17]
       26 DUPTABLE                         R3 K9 [{"type", "templateId", "params", "children"}]
       27 LOADK                            R4 K10 ["Ref"]
       28 SETTABLEKS                       R4 R3 K0 ["type"]
       30 LOADK                            R5 K11 ["/std/%*"]
       31 GETUPVAL                         R7 0
       32 NAMECALL                         R5 R5 K12 ["format"]
       34 CALL                             R5 2 1
       35 MOVE                             R4 R5
       36 SETTABLEKS                       R4 R3 K6 ["templateId"]
       38 SETTABLEKS                       R1 R3 K7 ["params"]
       40 SETTABLEKS                       R2 R3 K8 ["children"]
       42 RETURN                           R3 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R4 R0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 FASTCALL1                        TYPE R0 ; [+3]
        4 MOVE                             R8 R0
        5 GETIMPORT                        R7 K1 [type]
        7 CALL                             R7 1 1
        8 JUMPIFEQKS                       R7 K2 ["string"] ; [+24]
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R10 R2
       12 GETIMPORT                        R9 K1 [type]
       14 CALL                             R9 1 1
       15 JUMPIFNOTEQKS                    R9 K3 ["function"] ; [+2]
       17 LOADB                            R8 0 +1
       18 LOADB                            R8 1
       19 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       21 LOADK                            R9 K4 ["Anonymous templates do not support controllers. Use a named template instead: template(name, params, children, controller)"]
       22 GETIMPORT                        R7 K6 [assert]
       24 CALL                             R7 2 0
       25 JUMPIF                           R1 ; [+4]
       26 MOVE                             R6 R0
       27 NEWTABLE                         R5 0 0
       29 JUMP                             ; [+2]
       30 MOVE                             R6 R1
       31 MOVE                             R5 R0
       32 LOADK                            R4 K7 ["Template"]
       33 DUPTABLE                         R8 K12 [{"type", "name", "defaultParams", "controller", "children"}]
       34 LOADK                            R9 K7 ["Template"]
       35 SETTABLEKS                       R9 R8 K0 ["type"]
       37 SETTABLEKS                       R4 R8 K8 ["name"]
       39 SETTABLEKS                       R5 R8 K9 ["defaultParams"]
       41 MOVE                             R9 R3
       42 JUMPIF                           R9 ; [+2]
       43 NEWTABLE                         R9 0 0
       45 SETTABLEKS                       R9 R8 K10 ["controller"]
       47 MOVE                             R9 R6
       48 JUMPIF                           R9 ; [+2]
       49 NEWTABLE                         R9 0 0
       51 SETTABLEKS                       R9 R8 K11 ["children"]
       53 GETUPVAL                         R9 0
       54 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       56 GETIMPORT                        R7 K14 [setmetatable]
       58 CALL                             R7 2 1
       59 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 NEWTABLE                         R3 1 0
       15 DUPCLOSURE                       R4 K7 [PROTO_2]
       16 SETTABLEKS                       R4 R3 K8 ["__call"]
       18 DUPCLOSURE                       R4 K9 [PROTO_4]
       19 DUPCLOSURE                       R5 K10 [PROTO_5]
       20 CAPTURE                          VAL R3
       21 DUPTABLE                         R6 K29 [{"template", "If", "For", "VirtualList", "Put", "Provide", "Portal", "Folder", "TextLabel", "TextButton", "TextBox", "Frame", "ImageLabel", "ImageButton", "CanvasGroup", "ScrollingFrame", "StyleSheet", "StyleLink"}]
       22 SETTABLEKS                       R5 R6 K11 ["template"]
       24 LOADK                            R8 K12 ["If"]
       25 NEWCLOSURE                       R7 P4
       26 CAPTURE                          VAL R8
       27 SETTABLEKS                       R7 R6 K12 ["If"]
       29 LOADK                            R8 K13 ["For"]
       30 NEWCLOSURE                       R7 P4
       31 CAPTURE                          VAL R8
       32 SETTABLEKS                       R7 R6 K13 ["For"]
       34 LOADK                            R8 K14 ["VirtualList"]
       35 NEWCLOSURE                       R7 P4
       36 CAPTURE                          VAL R8
       37 SETTABLEKS                       R7 R6 K14 ["VirtualList"]
       39 LOADK                            R8 K15 ["Put"]
       40 NEWCLOSURE                       R7 P4
       41 CAPTURE                          VAL R8
       42 SETTABLEKS                       R7 R6 K15 ["Put"]
       44 LOADK                            R8 K16 ["Provide"]
       45 NEWCLOSURE                       R7 P4
       46 CAPTURE                          VAL R8
       47 SETTABLEKS                       R7 R6 K16 ["Provide"]
       49 LOADK                            R8 K17 ["Portal"]
       50 NEWCLOSURE                       R7 P4
       51 CAPTURE                          VAL R8
       52 SETTABLEKS                       R7 R6 K17 ["Portal"]
       54 LOADK                            R8 K18 ["Folder"]
       55 NEWCLOSURE                       R7 P5
       56 CAPTURE                          VAL R8
       57 SETTABLEKS                       R7 R6 K18 ["Folder"]
       59 LOADK                            R8 K19 ["TextLabel"]
       60 NEWCLOSURE                       R7 P5
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R7 R6 K19 ["TextLabel"]
       64 LOADK                            R8 K20 ["TextButton"]
       65 NEWCLOSURE                       R7 P5
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R7 R6 K20 ["TextButton"]
       69 LOADK                            R8 K21 ["TextBox"]
       70 NEWCLOSURE                       R7 P5
       71 CAPTURE                          VAL R8
       72 SETTABLEKS                       R7 R6 K21 ["TextBox"]
       74 LOADK                            R8 K22 ["Frame"]
       75 NEWCLOSURE                       R7 P5
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R7 R6 K22 ["Frame"]
       79 LOADK                            R8 K23 ["ImageLabel"]
       80 NEWCLOSURE                       R7 P5
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R7 R6 K23 ["ImageLabel"]
       84 LOADK                            R8 K24 ["ImageButton"]
       85 NEWCLOSURE                       R7 P5
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R7 R6 K24 ["ImageButton"]
       89 LOADK                            R8 K25 ["CanvasGroup"]
       90 NEWCLOSURE                       R7 P5
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R7 R6 K25 ["CanvasGroup"]
       94 LOADK                            R8 K26 ["ScrollingFrame"]
       95 NEWCLOSURE                       R7 P5
       96 CAPTURE                          VAL R8
       97 SETTABLEKS                       R7 R6 K26 ["ScrollingFrame"]
       99 LOADK                            R8 K27 ["StyleSheet"]
      100 NEWCLOSURE                       R7 P5
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R7 R6 K27 ["StyleSheet"]
      104 LOADK                            R8 K28 ["StyleLink"]
      105 NEWCLOSURE                       R7 P5
      106 CAPTURE                          VAL R8
      107 SETTABLEKS                       R7 R6 K28 ["StyleLink"]
      109 RETURN                           R6 1
