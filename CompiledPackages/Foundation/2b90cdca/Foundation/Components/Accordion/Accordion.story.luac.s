PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K4 [{["tag"] = "col size-full-0 auto-y"}]
       10 DUPTABLE                         R6 K8 [{"Text", "Button", "UIPadding"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K1 ["createElement"]
       14 GETUPVAL                         R8 2
       15 DUPTABLE                         R9 K11 [{["Text"] = "Our flagship product combines cutting-edge technology with sleek design.", ["tag"] = "auto-xy padding-y-small text-body-medium text-wrap text-align-x-left text-align-y-center"}]
       16 CALL                             R7 2 1
       17 SETTABLEKS                       R7 R6 K5 ["Text"]
       19 JUMPIF                           R0 ; [+12]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 3
       24 DUPTABLE                         R9 K17 [{["LayoutOrder"] = 2, ["text"] = "Click to expand!", ["onActivated"]}]
       25 NEWCLOSURE                       R10 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R10 R9 K16 ["onActivated"]
       30 CALL                             R7 2 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R7
       33 SETTABLEKS                       R7 R6 K6 ["Button"]
       35 JUMPIF                           R0 ; [+17]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K1 ["createElement"]
       39 LOADK                            R8 K7 ["UIPadding"]
       40 DUPTABLE                         R9 K19 [{"PaddingBottom"}]
       41 GETIMPORT                        R10 K22 [UDim.new]
       43 LOADN                            R11 0
       44 JUMPIFNOT                        R1 ; [+2]
       45 LOADN                            R12 50
       46 JUMP                             ; [+1]
       47 LOADN                            R12 0
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K18 ["PaddingBottom"]
       51 CALL                             R7 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K7 ["UIPadding"]
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 GETTABLEKS                       R3 R0 K0 ["numItems"]
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 MOVE                             R7 R2
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K1 ["createElement"]
       11 GETUPVAL                         R9 1
       12 DUPTABLE                         R10 K8 [{"text", "LayoutOrder", "hasDivider", "leadingIcon", "id", "isExpanded"}]
       13 LOADK                            R12 K9 ["Accordion header %*"]
       14 MOVE                             R14 R5
       15 NAMECALL                         R12 R12 K10 ["format"]
       17 CALL                             R12 2 1
       18 MOVE                             R11 R12
       19 SETTABLEKS                       R11 R10 K2 ["text"]
       21 SETTABLEKS                       R5 R10 K3 ["LayoutOrder"]
       23 GETTABLEKS                       R11 R0 K11 ["divider"]
       25 SETTABLEKS                       R11 R10 K4 ["hasDivider"]
       27 DUPTABLE                         R11 K14 [{"name", "variant"}]
       28 GETTABLEKS                       R12 R0 K15 ["icon"]
       30 SETTABLEKS                       R12 R11 K12 ["name"]
       32 GETTABLEKS                       R12 R0 K16 ["iconVariant"]
       34 SETTABLEKS                       R12 R11 K13 ["variant"]
       36 SETTABLEKS                       R11 R10 K5 ["leadingIcon"]
       38 SETTABLEKS                       R5 R10 K6 ["id"]
       40 JUMPIFEQKN                       R5 K17 [1] ; [+2]
       42 LOADB                            R11 0 +1
       43 LOADB                            R11 1
       44 SETTABLEKS                       R11 R10 K7 ["isExpanded"]
       46 GETUPVAL                         R11 2
       47 MOVE                             R12 R1
       48 CALL                             R11 1 -1
       49 CALL                             R8 -1 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R6 K20 [table.insert]
       53 CALL                             R6 -1 0
       54 FORNLOOP                         R3
       55 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"width", "size"}]
        5 GETIMPORT                        R4 K6 [UDim.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 400
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K1 ["width"]
       12 GETTABLEKS                       R4 R0 K7 ["controls"]
       14 GETTABLEKS                       R4 R4 K2 ["size"]
       16 SETTABLEKS                       R4 R3 K2 ["size"]
       18 NEWTABLE                         R4 0 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R6 R0 K7 ["controls"]
       23 LOADB                            R7 1
       24 CALL                             R5 2 1
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADN                            R1 -1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 2
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 1
       11 DUPTABLE                         R5 K4 [{"width", "onActivated"}]
       12 GETIMPORT                        R6 K7 [UDim.new]
       14 LOADN                            R7 0
       15 LOADN                            R8 400
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K2 ["width"]
       19 SETTABLEKS                       R2 R5 K3 ["onActivated"]
       21 DUPTABLE                         R6 K11 [{"AccordionItem1", "AccordionItem2", "AccordionItem3"}]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K1 ["createElement"]
       25 GETUPVAL                         R8 2
       26 DUPTABLE                         R9 K18 [{["text"] = "Controlled Item 1", ["LayoutOrder"] = 1, ["id"] = 1, ["isExpanded"]}]
       27 JUMPIFEQKN                       R0 K15 [1] ; [+2]
       29 LOADB                            R10 0 +1
       30 LOADB                            R10 1
       31 SETTABLEKS                       R10 R9 K17 ["isExpanded"]
       33 GETUPVAL                         R10 3
       34 CALL                             R10 0 -1
       35 CALL                             R7 -1 1
       36 SETTABLEKS                       R7 R6 K8 ["AccordionItem1"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K1 ["createElement"]
       41 GETUPVAL                         R8 2
       42 DUPTABLE                         R9 K21 [{["text"] = "Controlled Item 2", ["LayoutOrder"] = 2, ["id"] = 2, ["isExpanded"]}]
       43 JUMPIFEQKN                       R0 K20 [2] ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R9 K17 ["isExpanded"]
       49 GETUPVAL                         R10 3
       50 CALL                             R10 0 -1
       51 CALL                             R7 -1 1
       52 SETTABLEKS                       R7 R6 K9 ["AccordionItem2"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K1 ["createElement"]
       57 GETUPVAL                         R8 2
       58 DUPTABLE                         R9 K24 [{["text"] = "Controlled Item 3", ["LayoutOrder"] = 3, ["id"] = 3, ["isExpanded"]}]
       59 JUMPIFEQKN                       R0 K23 [3] ; [+2]
       61 LOADB                            R10 0 +1
       62 LOADB                            R10 1
       63 SETTABLEKS                       R10 R9 K17 ["isExpanded"]
       65 GETUPVAL                         R10 3
       66 CALL                             R10 0 -1
       67 CALL                             R7 -1 1
       68 SETTABLEKS                       R7 R6 K10 ["AccordionItem3"]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["filter"]
        6 GETUPVAL                         R2 3
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 NEWTABLE                         R1 0 1
       15 GETUPVAL                         R2 4
       16 SETLIST                          R1 R2 1 [1]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 NEWTABLE                         R1 0 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 NEWTABLE                         R1 0 3
       14 LOADN                            R2 1
       15 LOADN                            R3 2
       16 LOADN                            R4 3
       17 SETLIST                          R1 R2 3 [1]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 NEWTABLE                         R1 0 3
        5 LOADN                            R2 1
        6 LOADN                            R3 2
        7 LOADN                            R4 3
        8 SETLIST                          R1 R2 3 [1]
       10 CALL                             R0 1 2
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K1 ["createElement"]
       20 GETUPVAL                         R5 2
       21 DUPTABLE                         R6 K4 [{"width", "onActivated"}]
       22 GETIMPORT                        R7 K7 [UDim.new]
       24 LOADN                            R8 0
       25 LOADN                            R9 400
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K2 ["width"]
       29 SETTABLEKS                       R2 R6 K3 ["onActivated"]
       31 DUPTABLE                         R7 K11 [{"AccordionItem1", "AccordionItem2", "AccordionItem3"}]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K1 ["createElement"]
       35 GETUPVAL                         R9 3
       36 DUPTABLE                         R10 K18 [{["text"] = "All Controlling Item", ["LayoutOrder"] = 1, ["id"] = 1, ["onActivated"], ["isExpanded"]}]
       37 NEWCLOSURE                       R11 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R11 R10 K3 ["onActivated"]
       42 GETIMPORT                        R12 K21 [table.find]
       44 MOVE                             R13 R0
       45 LOADN                            R14 1
       46 CALL                             R12 2 1
       47 JUMPIFNOTEQKNIL                  R12 ; [+2]
       49 LOADB                            R11 0 +1
       50 LOADB                            R11 1
       51 SETTABLEKS                       R11 R10 K17 ["isExpanded"]
       53 GETUPVAL                         R11 4
       54 CALL                             R11 0 -1
       55 CALL                             R8 -1 1
       56 SETTABLEKS                       R8 R7 K8 ["AccordionItem1"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K1 ["createElement"]
       61 GETUPVAL                         R9 3
       62 DUPTABLE                         R10 K24 [{["text"] = "Controlled Item 2", ["LayoutOrder"] = 2, ["id"] = 2, ["isExpanded"]}]
       63 GETIMPORT                        R12 K21 [table.find]
       65 MOVE                             R13 R0
       66 LOADN                            R14 2
       67 CALL                             R12 2 1
       68 JUMPIFNOTEQKNIL                  R12 ; [+2]
       70 LOADB                            R11 0 +1
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K17 ["isExpanded"]
       74 GETUPVAL                         R11 4
       75 CALL                             R11 0 -1
       76 CALL                             R8 -1 1
       77 SETTABLEKS                       R8 R7 K9 ["AccordionItem2"]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K1 ["createElement"]
       82 GETUPVAL                         R9 3
       83 DUPTABLE                         R10 K27 [{["text"] = "Controlled Item 3", ["LayoutOrder"] = 3, ["id"] = 3, ["isExpanded"]}]
       84 GETIMPORT                        R12 K21 [table.find]
       86 MOVE                             R13 R0
       87 LOADN                            R14 3
       88 CALL                             R12 2 1
       89 JUMPIFNOTEQKNIL                  R12 ; [+2]
       91 LOADB                            R11 0 +1
       92 LOADB                            R11 1
       93 SETTABLEKS                       R11 R10 K17 ["isExpanded"]
       95 GETUPVAL                         R11 4
       96 CALL                             R11 0 -1
       97 CALL                             R8 -1 1
       98 SETTABLEKS                       R8 R7 K10 ["AccordionItem3"]
      100 CALL                             R4 3 -1
      101 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 2
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 1
       12 DUPTABLE                         R5 K3 [{"width"}]
       13 GETIMPORT                        R6 K6 [UDim.new]
       15 LOADN                            R7 0
       16 LOADN                            R8 400
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K2 ["width"]
       20 DUPTABLE                         R6 K11 [{"AccordionItem1", "AccordionItem2", "DefaultItem", "AccordionItem3"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K1 ["createElement"]
       24 GETUPVAL                         R8 2
       25 DUPTABLE                         R9 K19 [{["text"] = "Controlled Item 1", ["LayoutOrder"] = 1, ["id"] = 1, ["isExpanded"], ["onActivated"]}]
       26 JUMPIFEQKN                       R0 K15 [1] ; [+2]
       28 LOADB                            R10 0 +1
       29 LOADB                            R10 1
       30 SETTABLEKS                       R10 R9 K17 ["isExpanded"]
       32 JUMPIFEQKN                       R0 K15 [1] ; [+2]
       34 LOADB                            R11 0 +1
       35 LOADB                            R11 1
       36 LOADN                            R12 1
       37 NEWCLOSURE                       R10 P1
       38 CAPTURE                          VAL R11
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R12
       41 SETTABLEKS                       R10 R9 K18 ["onActivated"]
       43 GETUPVAL                         R10 3
       44 CALL                             R10 0 -1
       45 CALL                             R7 -1 1
       46 SETTABLEKS                       R7 R6 K7 ["AccordionItem1"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K1 ["createElement"]
       51 GETUPVAL                         R8 2
       52 DUPTABLE                         R9 K22 [{["text"] = "Default Item 1", ["LayoutOrder"] = 2, ["id"] = 2}]
       53 GETUPVAL                         R10 3
       54 CALL                             R10 0 -1
       55 CALL                             R7 -1 1
       56 SETTABLEKS                       R7 R6 K8 ["AccordionItem2"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K1 ["createElement"]
       61 GETUPVAL                         R8 2
       62 DUPTABLE                         R9 K25 [{["text"] = "Default Item 2", ["LayoutOrder"] = 3, ["id"] = 3}]
       63 GETUPVAL                         R10 3
       64 CALL                             R10 0 -1
       65 CALL                             R7 -1 1
       66 SETTABLEKS                       R7 R6 K9 ["DefaultItem"]
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K1 ["createElement"]
       71 GETUPVAL                         R8 2
       72 DUPTABLE                         R9 K28 [{["text"] = "Controlled Item 2", ["LayoutOrder"] = 4, ["id"] = 4, ["isExpanded"], ["onActivated"]}]
       73 JUMPIFEQKN                       R0 K27 [4] ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 SETTABLEKS                       R10 R9 K17 ["isExpanded"]
       79 JUMPIFEQKN                       R0 K27 [4] ; [+2]
       81 LOADB                            R11 0 +1
       82 LOADB                            R11 1
       83 LOADN                            R12 4
       84 NEWCLOSURE                       R10 P1
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R12
       88 SETTABLEKS                       R10 R9 K18 ["onActivated"]
       90 GETUPVAL                         R10 3
       91 CALL                             R10 0 -1
       92 CALL                             R7 -1 1
       93 SETTABLEKS                       R7 R6 K10 ["AccordionItem3"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["Accordion"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R6 R6 K13 ["Root"]
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K14 ["Item"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Button"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K10 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["Text"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Components"]
       67 GETTABLEKS                       R11 R11 K17 ["View"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K18 ["Enums"]
       74 GETTABLEKS                       R12 R12 K19 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R12 R2 K20 ["IconVariant"]
       79 NEWTABLE                         R13 0 5
       81 LOADK                            R14 K21 ["tilt"]
       82 LOADK                            R15 K22 ["robux"]
       83 LOADK                            R16 K23 ["shopping-basket-check"]
       84 LOADK                            R17 K24 ["hat-fedora"]
       85 LOADK                            R18 K25 [""]
       86 SETLIST                          R13 R14 5 [1]
       88 DUPCLOSURE                       R14 K26 [PROTO_1]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R8
       93 DUPCLOSURE                       R15 K27 [PROTO_2]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R14
       97 DUPTABLE                         R16 K31 [{["summary"] = "Accordion", ["stories"], ["controls"]}]
       98 DUPTABLE                         R17 K36 [{"ConfigurableDefault", "Controlled", "Controlled2", "Mixed"}]
       99 DUPTABLE                         R18 K40 [{["name"] = "Default (configurable)", ["story"]}]
      100 DUPCLOSURE                       R19 K41 [PROTO_3]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R15
      104 SETTABLEKS                       R19 R18 K39 ["story"]
      106 SETTABLEKS                       R18 R17 K32 ["ConfigurableDefault"]
      108 DUPTABLE                         R18 K43 [{["name"] = "Controlled (one expanded item at a time)", ["story"]}]
      109 DUPCLOSURE                       R19 K44 [PROTO_6]
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R14
      114 SETTABLEKS                       R19 R18 K39 ["story"]
      116 SETTABLEKS                       R18 R17 K33 ["Controlled"]
      118 DUPTABLE                         R18 K46 [{["name"] = "Complex Controlled with unique onActivated", ["story"]}]
      119 DUPCLOSURE                       R19 K47 [PROTO_12]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R19 R18 K39 ["story"]
      127 SETTABLEKS                       R18 R17 K34 ["Controlled2"]
      129 DUPTABLE                         R18 K49 [{["name"] = "Partially Controlled", ["story"]}]
      130 DUPCLOSURE                       R19 K50 [PROTO_15]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R14
      135 SETTABLEKS                       R19 R18 K39 ["story"]
      137 SETTABLEKS                       R18 R17 K35 ["Mixed"]
      139 SETTABLEKS                       R17 R16 K29 ["stories"]
      141 DUPTABLE                         R17 K58 [{["size"], ["icon"], ["iconVariant"], ["numItems"] = 3, ["divider"] = True}]
      142 GETTABLEKS                       R18 R3 K59 ["values"]
      144 MOVE                             R19 R11
      145 CALL                             R18 1 1
      146 SETTABLEKS                       R18 R17 K51 ["size"]
      148 GETTABLEKS                       R18 R3 K59 ["values"]
      150 MOVE                             R19 R13
      151 CALL                             R18 1 1
      152 SETTABLEKS                       R18 R17 K52 ["icon"]
      154 GETTABLEKS                       R18 R3 K59 ["values"]
      156 MOVE                             R19 R12
      157 CALL                             R18 1 1
      158 SETTABLEKS                       R18 R17 K53 ["iconVariant"]
      160 SETTABLEKS                       R17 R16 K30 ["controls"]
      162 RETURN                           R16 1
