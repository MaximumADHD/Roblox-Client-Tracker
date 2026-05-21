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
        9 DUPTABLE                         R5 K3 [{"tag"}]
       10 LOADK                            R6 K4 ["col size-full-0 auto-y"]
       11 SETTABLEKS                       R6 R5 K2 ["tag"]
       13 DUPTABLE                         R6 K8 [{"Text", "Button", "UIPadding"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K1 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K9 [{"Text", "tag"}]
       19 LOADK                            R10 K10 ["Our flagship product combines cutting-edge technology with sleek design."]
       20 SETTABLEKS                       R10 R9 K5 ["Text"]
       22 LOADK                            R10 K11 ["auto-xy padding-y-small text-body-medium text-wrap text-align-x-left text-align-y-center"]
       23 SETTABLEKS                       R10 R9 K2 ["tag"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K5 ["Text"]
       28 JUMPIF                           R0 ; [+18]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K1 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K15 [{"LayoutOrder", "text", "onActivated"}]
       34 LOADN                            R10 2
       35 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       37 LOADK                            R10 K16 ["Click to expand!"]
       38 SETTABLEKS                       R10 R9 K13 ["text"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       45 CALL                             R7 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 SETTABLEKS                       R7 R6 K6 ["Button"]
       50 JUMPIF                           R0 ; [+17]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K1 ["createElement"]
       54 LOADK                            R8 K7 ["UIPadding"]
       55 DUPTABLE                         R9 K18 [{"PaddingBottom"}]
       56 GETIMPORT                        R10 K21 [UDim.new]
       58 LOADN                            R11 0
       59 JUMPIFNOT                        R1 ; [+2]
       60 LOADN                            R12 50
       61 JUMP                             ; [+1]
       62 LOADN                            R12 0
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K17 ["PaddingBottom"]
       66 CALL                             R7 2 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R7
       69 SETTABLEKS                       R7 R6 K7 ["UIPadding"]
       71 CALL                             R3 3 -1
       72 RETURN                           R3 -1

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
        8 LOADN                            R6 144
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
        3 LOADN                            R1 255
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
       15 LOADN                            R8 144
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K2 ["width"]
       19 SETTABLEKS                       R2 R5 K3 ["onActivated"]
       21 DUPTABLE                         R6 K11 [{"AccordionItem1", "AccordionItem2", "AccordionItem3"}]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K1 ["createElement"]
       25 GETUPVAL                         R8 2
       26 DUPTABLE                         R9 K16 [{"text", "LayoutOrder", "id", "isExpanded"}]
       27 LOADK                            R10 K17 ["Controlled Item 1"]
       28 SETTABLEKS                       R10 R9 K12 ["text"]
       30 LOADN                            R10 1
       31 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       33 LOADN                            R10 1
       34 SETTABLEKS                       R10 R9 K14 ["id"]
       36 JUMPIFEQKN                       R0 K18 [1] ; [+2]
       38 LOADB                            R10 0 +1
       39 LOADB                            R10 1
       40 SETTABLEKS                       R10 R9 K15 ["isExpanded"]
       42 GETUPVAL                         R10 3
       43 CALL                             R10 0 -1
       44 CALL                             R7 -1 1
       45 SETTABLEKS                       R7 R6 K8 ["AccordionItem1"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K1 ["createElement"]
       50 GETUPVAL                         R8 2
       51 DUPTABLE                         R9 K16 [{"text", "LayoutOrder", "id", "isExpanded"}]
       52 LOADK                            R10 K19 ["Controlled Item 2"]
       53 SETTABLEKS                       R10 R9 K12 ["text"]
       55 LOADN                            R10 2
       56 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       58 LOADN                            R10 2
       59 SETTABLEKS                       R10 R9 K14 ["id"]
       61 JUMPIFEQKN                       R0 K20 [2] ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K15 ["isExpanded"]
       67 GETUPVAL                         R10 3
       68 CALL                             R10 0 -1
       69 CALL                             R7 -1 1
       70 SETTABLEKS                       R7 R6 K9 ["AccordionItem2"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K1 ["createElement"]
       75 GETUPVAL                         R8 2
       76 DUPTABLE                         R9 K16 [{"text", "LayoutOrder", "id", "isExpanded"}]
       77 LOADK                            R10 K21 ["Controlled Item 3"]
       78 SETTABLEKS                       R10 R9 K12 ["text"]
       80 LOADN                            R10 3
       81 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       83 LOADN                            R10 3
       84 SETTABLEKS                       R10 R9 K14 ["id"]
       86 JUMPIFEQKN                       R0 K22 [3] ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 SETTABLEKS                       R10 R9 K15 ["isExpanded"]
       92 GETUPVAL                         R10 3
       93 CALL                             R10 0 -1
       94 CALL                             R7 -1 1
       95 SETTABLEKS                       R7 R6 K10 ["AccordionItem3"]
       97 CALL                             R3 3 -1
       98 RETURN                           R3 -1

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
       25 LOADN                            R9 144
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K2 ["width"]
       29 SETTABLEKS                       R2 R6 K3 ["onActivated"]
       31 DUPTABLE                         R7 K11 [{"AccordionItem1", "AccordionItem2", "AccordionItem3"}]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K1 ["createElement"]
       35 GETUPVAL                         R9 3
       36 DUPTABLE                         R10 K16 [{"text", "LayoutOrder", "id", "onActivated", "isExpanded"}]
       37 LOADK                            R11 K17 ["All Controlling Item"]
       38 SETTABLEKS                       R11 R10 K12 ["text"]
       40 LOADN                            R11 1
       41 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       43 LOADN                            R11 1
       44 SETTABLEKS                       R11 R10 K14 ["id"]
       46 NEWCLOSURE                       R11 P2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R11 R10 K3 ["onActivated"]
       51 GETIMPORT                        R12 K20 [table.find]
       53 MOVE                             R13 R0
       54 LOADN                            R14 1
       55 CALL                             R12 2 1
       56 JUMPIFNOTEQKNIL                  R12 ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
       62 GETUPVAL                         R11 4
       63 CALL                             R11 0 -1
       64 CALL                             R8 -1 1
       65 SETTABLEKS                       R8 R7 K8 ["AccordionItem1"]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K1 ["createElement"]
       70 GETUPVAL                         R9 3
       71 DUPTABLE                         R10 K21 [{"text", "LayoutOrder", "id", "isExpanded"}]
       72 LOADK                            R11 K22 ["Controlled Item 2"]
       73 SETTABLEKS                       R11 R10 K12 ["text"]
       75 LOADN                            R11 2
       76 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       78 LOADN                            R11 2
       79 SETTABLEKS                       R11 R10 K14 ["id"]
       81 GETIMPORT                        R12 K20 [table.find]
       83 MOVE                             R13 R0
       84 LOADN                            R14 2
       85 CALL                             R12 2 1
       86 JUMPIFNOTEQKNIL                  R12 ; [+2]
       88 LOADB                            R11 0 +1
       89 LOADB                            R11 1
       90 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
       92 GETUPVAL                         R11 4
       93 CALL                             R11 0 -1
       94 CALL                             R8 -1 1
       95 SETTABLEKS                       R8 R7 K9 ["AccordionItem2"]
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K1 ["createElement"]
      100 GETUPVAL                         R9 3
      101 DUPTABLE                         R10 K21 [{"text", "LayoutOrder", "id", "isExpanded"}]
      102 LOADK                            R11 K23 ["Controlled Item 3"]
      103 SETTABLEKS                       R11 R10 K12 ["text"]
      105 LOADN                            R11 3
      106 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      108 LOADN                            R11 3
      109 SETTABLEKS                       R11 R10 K14 ["id"]
      111 GETIMPORT                        R12 K20 [table.find]
      113 MOVE                             R13 R0
      114 LOADN                            R14 3
      115 CALL                             R12 2 1
      116 JUMPIFNOTEQKNIL                  R12 ; [+2]
      118 LOADB                            R11 0 +1
      119 LOADB                            R11 1
      120 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
      122 GETUPVAL                         R11 4
      123 CALL                             R11 0 -1
      124 CALL                             R8 -1 1
      125 SETTABLEKS                       R8 R7 K10 ["AccordionItem3"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

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
       16 LOADN                            R8 144
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K2 ["width"]
       20 DUPTABLE                         R6 K11 [{"AccordionItem1", "AccordionItem2", "DefaultItem", "AccordionItem3"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K1 ["createElement"]
       24 GETUPVAL                         R8 2
       25 DUPTABLE                         R9 K17 [{"text", "LayoutOrder", "id", "isExpanded", "onActivated"}]
       26 LOADK                            R10 K18 ["Controlled Item 1"]
       27 SETTABLEKS                       R10 R9 K12 ["text"]
       29 LOADN                            R10 1
       30 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       32 LOADN                            R10 1
       33 SETTABLEKS                       R10 R9 K14 ["id"]
       35 JUMPIFEQKN                       R0 K19 [1] ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 SETTABLEKS                       R10 R9 K15 ["isExpanded"]
       41 JUMPIFEQKN                       R0 K19 [1] ; [+2]
       43 LOADB                            R11 0 +1
       44 LOADB                            R11 1
       45 LOADN                            R12 1
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R11
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R12
       50 SETTABLEKS                       R10 R9 K16 ["onActivated"]
       52 GETUPVAL                         R10 3
       53 CALL                             R10 0 -1
       54 CALL                             R7 -1 1
       55 SETTABLEKS                       R7 R6 K7 ["AccordionItem1"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K1 ["createElement"]
       60 GETUPVAL                         R8 2
       61 DUPTABLE                         R9 K20 [{"text", "LayoutOrder", "id"}]
       62 LOADK                            R10 K21 ["Default Item 1"]
       63 SETTABLEKS                       R10 R9 K12 ["text"]
       65 LOADN                            R10 2
       66 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       68 LOADN                            R10 2
       69 SETTABLEKS                       R10 R9 K14 ["id"]
       71 GETUPVAL                         R10 3
       72 CALL                             R10 0 -1
       73 CALL                             R7 -1 1
       74 SETTABLEKS                       R7 R6 K8 ["AccordionItem2"]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K1 ["createElement"]
       79 GETUPVAL                         R8 2
       80 DUPTABLE                         R9 K20 [{"text", "LayoutOrder", "id"}]
       81 LOADK                            R10 K22 ["Default Item 2"]
       82 SETTABLEKS                       R10 R9 K12 ["text"]
       84 LOADN                            R10 3
       85 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       87 LOADN                            R10 3
       88 SETTABLEKS                       R10 R9 K14 ["id"]
       90 GETUPVAL                         R10 3
       91 CALL                             R10 0 -1
       92 CALL                             R7 -1 1
       93 SETTABLEKS                       R7 R6 K9 ["DefaultItem"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R7 R7 K1 ["createElement"]
       98 GETUPVAL                         R8 2
       99 DUPTABLE                         R9 K17 [{"text", "LayoutOrder", "id", "isExpanded", "onActivated"}]
      100 LOADK                            R10 K23 ["Controlled Item 2"]
      101 SETTABLEKS                       R10 R9 K12 ["text"]
      103 LOADN                            R10 4
      104 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
      106 LOADN                            R10 4
      107 SETTABLEKS                       R10 R9 K14 ["id"]
      109 JUMPIFEQKN                       R0 K24 [4] ; [+2]
      111 LOADB                            R10 0 +1
      112 LOADB                            R10 1
      113 SETTABLEKS                       R10 R9 K15 ["isExpanded"]
      115 JUMPIFEQKN                       R0 K24 [4] ; [+2]
      117 LOADB                            R11 0 +1
      118 LOADB                            R11 1
      119 LOADN                            R12 4
      120 NEWCLOSURE                       R10 P1
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R12
      124 SETTABLEKS                       R10 R9 K16 ["onActivated"]
      126 GETUPVAL                         R10 3
      127 CALL                             R10 0 -1
      128 CALL                             R7 -1 1
      129 SETTABLEKS                       R7 R6 K10 ["AccordionItem3"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

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
       97 DUPTABLE                         R16 K31 [{"summary", "stories", "controls"}]
       98 LOADK                            R17 K12 ["Accordion"]
       99 SETTABLEKS                       R17 R16 K28 ["summary"]
      101 DUPTABLE                         R17 K36 [{"ConfigurableDefault", "Controlled", "Controlled2", "Mixed"}]
      102 DUPTABLE                         R18 K39 [{"name", "story"}]
      103 LOADK                            R19 K40 ["Default (configurable)"]
      104 SETTABLEKS                       R19 R18 K37 ["name"]
      106 DUPCLOSURE                       R19 K41 [PROTO_3]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R15
      110 SETTABLEKS                       R19 R18 K38 ["story"]
      112 SETTABLEKS                       R18 R17 K32 ["ConfigurableDefault"]
      114 DUPTABLE                         R18 K39 [{"name", "story"}]
      115 LOADK                            R19 K42 ["Controlled (one expanded item at a time)"]
      116 SETTABLEKS                       R19 R18 K37 ["name"]
      118 DUPCLOSURE                       R19 K43 [PROTO_6]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R14
      123 SETTABLEKS                       R19 R18 K38 ["story"]
      125 SETTABLEKS                       R18 R17 K33 ["Controlled"]
      127 DUPTABLE                         R18 K39 [{"name", "story"}]
      128 LOADK                            R19 K44 ["Complex Controlled with unique onActivated"]
      129 SETTABLEKS                       R19 R18 K37 ["name"]
      131 DUPCLOSURE                       R19 K45 [PROTO_12]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R14
      137 SETTABLEKS                       R19 R18 K38 ["story"]
      139 SETTABLEKS                       R18 R17 K34 ["Controlled2"]
      141 DUPTABLE                         R18 K39 [{"name", "story"}]
      142 LOADK                            R19 K46 ["Partially Controlled"]
      143 SETTABLEKS                       R19 R18 K37 ["name"]
      145 DUPCLOSURE                       R19 K47 [PROTO_15]
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R14
      150 SETTABLEKS                       R19 R18 K38 ["story"]
      152 SETTABLEKS                       R18 R17 K35 ["Mixed"]
      154 SETTABLEKS                       R17 R16 K29 ["stories"]
      156 DUPTABLE                         R17 K53 [{"size", "icon", "iconVariant", "numItems", "divider"}]
      157 GETTABLEKS                       R18 R3 K54 ["values"]
      159 MOVE                             R19 R11
      160 CALL                             R18 1 1
      161 SETTABLEKS                       R18 R17 K48 ["size"]
      163 GETTABLEKS                       R18 R3 K54 ["values"]
      165 MOVE                             R19 R13
      166 CALL                             R18 1 1
      167 SETTABLEKS                       R18 R17 K49 ["icon"]
      169 GETTABLEKS                       R18 R3 K54 ["values"]
      171 MOVE                             R19 R12
      172 CALL                             R18 1 1
      173 SETTABLEKS                       R18 R17 K50 ["iconVariant"]
      175 LOADN                            R18 3
      176 SETTABLEKS                       R18 R17 K51 ["numItems"]
      178 LOADB                            R18 1
      179 SETTABLEKS                       R18 R17 K52 ["divider"]
      181 SETTABLEKS                       R17 R16 K30 ["controls"]
      183 RETURN                           R16 1
