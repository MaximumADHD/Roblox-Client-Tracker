PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Text", "Size", "AutomaticSize", "BackgroundTransparency"}]
        5 LOADK                            R4 K6 ["Nice"]
        6 SETTABLEKS                       R4 R3 K1 ["Text"]
        8 GETIMPORT                        R4 K9 [UDim2.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 0
       13 MOVE                             R8 R0
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R3 K2 ["Size"]
       17 GETIMPORT                        R4 K12 [Enum.AutomaticSize.X]
       19 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
       21 LOADN                            R4 1
       22 SETTABLEKS                       R4 R3 K4 ["BackgroundTransparency"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R2 R0 K0 ["numItems"]
        5 LOADN                            R3 1
        6 FORNPREP                         R2
        7 MOVE                             R6 R1
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K1 ["createElement"]
       11 GETUPVAL                         R8 1
       12 DUPTABLE                         R9 K7 [{"text", "LayoutOrder", "hasDivider", "leadingIcon", "id"}]
       13 LOADK                            R11 K8 ["Accordion Item %*"]
       14 MOVE                             R13 R4
       15 NAMECALL                         R11 R11 K9 ["format"]
       17 CALL                             R11 2 1
       18 MOVE                             R10 R11
       19 SETTABLEKS                       R10 R9 K2 ["text"]
       21 SETTABLEKS                       R4 R9 K3 ["LayoutOrder"]
       23 GETTABLEKS                       R10 R0 K10 ["divider"]
       25 SETTABLEKS                       R10 R9 K4 ["hasDivider"]
       27 DUPTABLE                         R10 K13 [{"name", "variant"}]
       28 GETTABLEKS                       R11 R0 K14 ["icon"]
       30 SETTABLEKS                       R11 R10 K11 ["name"]
       32 GETTABLEKS                       R11 R0 K15 ["iconVariant"]
       34 SETTABLEKS                       R11 R10 K12 ["variant"]
       36 SETTABLEKS                       R10 R9 K5 ["leadingIcon"]
       38 SETTABLEKS                       R4 R9 K6 ["id"]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R11 R0 K16 ["contentHeight"]
       43 CALL                             R10 1 -1
       44 CALL                             R7 -1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R5 K19 [table.insert]
       48 CALL                             R5 -1 0
       49 FORNLOOP                         R2
       50 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"width", "size"}]
        5 GETIMPORT                        R4 K6 [UDim.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 144
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K1 ["width"]
       12 GETTABLEKS                       R5 R0 K7 ["controls"]
       14 GETTABLEKS                       R4 R5 K2 ["size"]
       16 SETTABLEKS                       R4 R3 K2 ["size"]
       18 NEWTABLE                         R4 0 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R6 R0 K7 ["controls"]
       23 CALL                             R5 1 1
       24 SETLIST                          R4 R5 1 [1]
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K4 [{"width", "onActivated"}]
       12 GETIMPORT                        R7 K7 [UDim.new]
       14 LOADN                            R8 0
       15 LOADN                            R9 144
       16 CALL                             R7 2 1
       17 SETTABLEKS                       R7 R6 K2 ["width"]
       19 SETTABLEKS                       R3 R6 K3 ["onActivated"]
       21 DUPTABLE                         R7 K11 [{"AccordionItem1", "AccordionItem2", "AccordionItem3"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K1 ["createElement"]
       25 GETUPVAL                         R9 2
       26 DUPTABLE                         R10 K16 [{"text", "LayoutOrder", "id", "isExpanded"}]
       27 LOADK                            R11 K17 ["Controlled Item 1"]
       28 SETTABLEKS                       R11 R10 K12 ["text"]
       30 LOADN                            R11 1
       31 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       33 LOADN                            R11 1
       34 SETTABLEKS                       R11 R10 K14 ["id"]
       36 JUMPIFEQKN                       R1 K18 [1] ; [+2]
       38 LOADB                            R11 0 +1
       39 LOADB                            R11 1
       40 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R13 R0 K19 ["controls"]
       45 GETTABLEKS                       R12 R13 K20 ["contentHeight"]
       47 CALL                             R11 1 -1
       48 CALL                             R8 -1 1
       49 SETTABLEKS                       R8 R7 K8 ["AccordionItem1"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K1 ["createElement"]
       54 GETUPVAL                         R9 2
       55 DUPTABLE                         R10 K16 [{"text", "LayoutOrder", "id", "isExpanded"}]
       56 LOADK                            R11 K21 ["Controlled Item 2"]
       57 SETTABLEKS                       R11 R10 K12 ["text"]
       59 LOADN                            R11 2
       60 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       62 LOADN                            R11 2
       63 SETTABLEKS                       R11 R10 K14 ["id"]
       65 JUMPIFEQKN                       R1 K22 [2] ; [+2]
       67 LOADB                            R11 0 +1
       68 LOADB                            R11 1
       69 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R13 R0 K19 ["controls"]
       74 GETTABLEKS                       R12 R13 K20 ["contentHeight"]
       76 CALL                             R11 1 -1
       77 CALL                             R8 -1 1
       78 SETTABLEKS                       R8 R7 K9 ["AccordionItem2"]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R8 R9 K1 ["createElement"]
       83 GETUPVAL                         R9 2
       84 DUPTABLE                         R10 K16 [{"text", "LayoutOrder", "id", "isExpanded"}]
       85 LOADK                            R11 K23 ["Controlled Item 3"]
       86 SETTABLEKS                       R11 R10 K12 ["text"]
       88 LOADN                            R11 3
       89 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       91 LOADN                            R11 3
       92 SETTABLEKS                       R11 R10 K14 ["id"]
       94 JUMPIFEQKN                       R1 K24 [3] ; [+2]
       96 LOADB                            R11 0 +1
       97 LOADB                            R11 1
       98 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
      100 GETUPVAL                         R11 3
      101 GETTABLEKS                       R13 R0 K19 ["controls"]
      103 GETTABLEKS                       R12 R13 K20 ["contentHeight"]
      105 CALL                             R11 1 -1
      106 CALL                             R8 -1 1
      107 SETTABLEKS                       R8 R7 K10 ["AccordionItem3"]
      109 CALL                             R4 3 -1
      110 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["filter"]
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

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 3
        5 LOADN                            R3 1
        6 LOADN                            R4 2
        7 LOADN                            R5 3
        8 SETLIST                          R2 R3 3 [1]
       10 CALL                             R1 1 2
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K4 [{"width", "onActivated"}]
       22 GETIMPORT                        R8 K7 [UDim.new]
       24 LOADN                            R9 0
       25 LOADN                            R10 144
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K2 ["width"]
       29 SETTABLEKS                       R3 R7 K3 ["onActivated"]
       31 DUPTABLE                         R8 K11 [{"AccordionItem1", "AccordionItem2", "AccordionItem3"}]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K1 ["createElement"]
       35 GETUPVAL                         R10 3
       36 DUPTABLE                         R11 K16 [{"text", "LayoutOrder", "id", "onActivated", "isExpanded"}]
       37 LOADK                            R12 K17 ["All Controlling Item"]
       38 SETTABLEKS                       R12 R11 K12 ["text"]
       40 LOADN                            R12 1
       41 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       43 LOADN                            R12 1
       44 SETTABLEKS                       R12 R11 K14 ["id"]
       46 NEWCLOSURE                       R12 P2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R12 R11 K3 ["onActivated"]
       51 GETIMPORT                        R13 K20 [table.find]
       53 MOVE                             R14 R1
       54 LOADN                            R15 1
       55 CALL                             R13 2 1
       56 JUMPIFNOTEQKNIL                  R13 ; [+2]
       58 LOADB                            R12 0 +1
       59 LOADB                            R12 1
       60 SETTABLEKS                       R12 R11 K15 ["isExpanded"]
       62 GETUPVAL                         R12 4
       63 GETTABLEKS                       R14 R0 K21 ["controls"]
       65 GETTABLEKS                       R13 R14 K22 ["contentHeight"]
       67 CALL                             R12 1 -1
       68 CALL                             R9 -1 1
       69 SETTABLEKS                       R9 R8 K8 ["AccordionItem1"]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R9 R10 K1 ["createElement"]
       74 GETUPVAL                         R10 3
       75 DUPTABLE                         R11 K23 [{"text", "LayoutOrder", "id", "isExpanded"}]
       76 LOADK                            R12 K24 ["Controlled Item 2"]
       77 SETTABLEKS                       R12 R11 K12 ["text"]
       79 LOADN                            R12 2
       80 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       82 LOADN                            R12 2
       83 SETTABLEKS                       R12 R11 K14 ["id"]
       85 GETIMPORT                        R13 K20 [table.find]
       87 MOVE                             R14 R1
       88 LOADN                            R15 2
       89 CALL                             R13 2 1
       90 JUMPIFNOTEQKNIL                  R13 ; [+2]
       92 LOADB                            R12 0 +1
       93 LOADB                            R12 1
       94 SETTABLEKS                       R12 R11 K15 ["isExpanded"]
       96 GETUPVAL                         R12 4
       97 GETTABLEKS                       R14 R0 K21 ["controls"]
       99 GETTABLEKS                       R13 R14 K22 ["contentHeight"]
      101 CALL                             R12 1 -1
      102 CALL                             R9 -1 1
      103 SETTABLEKS                       R9 R8 K9 ["AccordionItem2"]
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R9 R10 K1 ["createElement"]
      108 GETUPVAL                         R10 3
      109 DUPTABLE                         R11 K23 [{"text", "LayoutOrder", "id", "isExpanded"}]
      110 LOADK                            R12 K25 ["Controlled Item 3"]
      111 SETTABLEKS                       R12 R11 K12 ["text"]
      113 LOADN                            R12 3
      114 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      116 LOADN                            R12 3
      117 SETTABLEKS                       R12 R11 K14 ["id"]
      119 GETIMPORT                        R13 K20 [table.find]
      121 MOVE                             R14 R1
      122 LOADN                            R15 3
      123 CALL                             R13 2 1
      124 JUMPIFNOTEQKNIL                  R13 ; [+2]
      126 LOADB                            R12 0 +1
      127 LOADB                            R12 1
      128 SETTABLEKS                       R12 R11 K15 ["isExpanded"]
      130 GETUPVAL                         R12 4
      131 GETTABLEKS                       R14 R0 K21 ["controls"]
      133 GETTABLEKS                       R13 R14 K22 ["contentHeight"]
      135 CALL                             R12 1 -1
      136 CALL                             R9 -1 1
      137 SETTABLEKS                       R9 R8 K10 ["AccordionItem3"]
      139 CALL                             R5 3 -1
      140 RETURN                           R5 -1

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K1 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K3 [{"width"}]
       13 GETIMPORT                        R7 K6 [UDim.new]
       15 LOADN                            R8 0
       16 LOADN                            R9 144
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K2 ["width"]
       20 DUPTABLE                         R7 K11 [{"AccordionItem1", "AccordionItem2", "DefaultItem", "AccordionItem3"}]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K1 ["createElement"]
       24 GETUPVAL                         R9 2
       25 DUPTABLE                         R10 K17 [{"text", "LayoutOrder", "id", "isExpanded", "onActivated"}]
       26 LOADK                            R11 K18 ["Controlled Item 1"]
       27 SETTABLEKS                       R11 R10 K12 ["text"]
       29 LOADN                            R11 1
       30 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       32 LOADN                            R11 1
       33 SETTABLEKS                       R11 R10 K14 ["id"]
       35 JUMPIFEQKN                       R1 K19 [1] ; [+2]
       37 LOADB                            R11 0 +1
       38 LOADB                            R11 1
       39 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
       41 JUMPIFEQKN                       R1 K19 [1] ; [+2]
       43 LOADB                            R12 0 +1
       44 LOADB                            R12 1
       45 LOADN                            R13 1
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          VAL R12
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R13
       50 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       52 GETUPVAL                         R11 3
       53 GETTABLEKS                       R13 R0 K20 ["controls"]
       55 GETTABLEKS                       R12 R13 K21 ["contentHeight"]
       57 CALL                             R11 1 -1
       58 CALL                             R8 -1 1
       59 SETTABLEKS                       R8 R7 K7 ["AccordionItem1"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K1 ["createElement"]
       64 GETUPVAL                         R9 2
       65 DUPTABLE                         R10 K22 [{"text", "LayoutOrder", "id"}]
       66 LOADK                            R11 K23 ["Default Item 1"]
       67 SETTABLEKS                       R11 R10 K12 ["text"]
       69 LOADN                            R11 2
       70 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       72 LOADN                            R11 2
       73 SETTABLEKS                       R11 R10 K14 ["id"]
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R13 R0 K20 ["controls"]
       78 GETTABLEKS                       R12 R13 K21 ["contentHeight"]
       80 CALL                             R11 1 -1
       81 CALL                             R8 -1 1
       82 SETTABLEKS                       R8 R7 K8 ["AccordionItem2"]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R8 R9 K1 ["createElement"]
       87 GETUPVAL                         R9 2
       88 DUPTABLE                         R10 K22 [{"text", "LayoutOrder", "id"}]
       89 LOADK                            R11 K24 ["Default Item 2"]
       90 SETTABLEKS                       R11 R10 K12 ["text"]
       92 LOADN                            R11 3
       93 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       95 LOADN                            R11 3
       96 SETTABLEKS                       R11 R10 K14 ["id"]
       98 GETUPVAL                         R11 3
       99 GETTABLEKS                       R13 R0 K20 ["controls"]
      101 GETTABLEKS                       R12 R13 K21 ["contentHeight"]
      103 CALL                             R11 1 -1
      104 CALL                             R8 -1 1
      105 SETTABLEKS                       R8 R7 K9 ["DefaultItem"]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R8 R9 K1 ["createElement"]
      110 GETUPVAL                         R9 2
      111 DUPTABLE                         R10 K17 [{"text", "LayoutOrder", "id", "isExpanded", "onActivated"}]
      112 LOADK                            R11 K25 ["Controlled Item 2"]
      113 SETTABLEKS                       R11 R10 K12 ["text"]
      115 LOADN                            R11 4
      116 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      118 LOADN                            R11 4
      119 SETTABLEKS                       R11 R10 K14 ["id"]
      121 JUMPIFEQKN                       R1 K26 [4] ; [+2]
      123 LOADB                            R11 0 +1
      124 LOADB                            R11 1
      125 SETTABLEKS                       R11 R10 K15 ["isExpanded"]
      127 JUMPIFEQKN                       R1 K26 [4] ; [+2]
      129 LOADB                            R12 0 +1
      130 LOADB                            R12 1
      131 LOADN                            R13 4
      132 NEWCLOSURE                       R11 P1
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R13
      136 SETTABLEKS                       R11 R10 K16 ["onActivated"]
      138 GETUPVAL                         R11 3
      139 GETTABLEKS                       R13 R0 K20 ["controls"]
      141 GETTABLEKS                       R12 R13 K21 ["contentHeight"]
      143 CALL                             R11 1 -1
      144 CALL                             R8 -1 1
      145 SETTABLEKS                       R8 R7 K10 ["AccordionItem3"]
      147 CALL                             R4 3 -1
      148 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["BuilderIcons"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R9 R0 K10 ["Components"]
       35 GETTABLEKS                       R8 R9 K12 ["Accordion"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R6 R7 K13 ["Root"]
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R9 R10 K4 ["Parent"]
       46 GETTABLEKS                       R8 R9 K14 ["Item"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K10 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["Text"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R11 K17 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R4 K18 ["IconVariant"]
       65 NEWTABLE                         R11 0 5
       67 LOADK                            R12 K19 ["tilt"]
       68 LOADK                            R13 K20 ["robux"]
       69 LOADK                            R14 K21 ["shopping-basket-check"]
       70 LOADK                            R15 K22 ["hat-fedora"]
       71 LOADK                            R16 K23 [""]
       72 SETLIST                          R11 R12 5 [1]
       74 NEWTABLE                         R12 0 4
       76 LOADN                            R13 50
       77 LOADN                            R14 100
       78 LOADN                            R15 44
       79 LOADN                            R16 88
       80 SETLIST                          R12 R13 4 [1]
       82 DUPCLOSURE                       R13 K24 [PROTO_0]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 DUPCLOSURE                       R14 K25 [PROTO_1]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R13
       89 DUPTABLE                         R15 K29 [{"summary", "stories", "controls"}]
       90 LOADK                            R16 K12 ["Accordion"]
       91 SETTABLEKS                       R16 R15 K26 ["summary"]
       93 DUPTABLE                         R16 K34 [{"ConfigurableDefault", "Controlled", "Controlled2", "Mixed"}]
       94 DUPTABLE                         R17 K37 [{"name", "story"}]
       95 LOADK                            R18 K38 ["Default (configurable)"]
       96 SETTABLEKS                       R18 R17 K35 ["name"]
       98 DUPCLOSURE                       R18 K39 [PROTO_2]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R14
      102 SETTABLEKS                       R18 R17 K36 ["story"]
      104 SETTABLEKS                       R17 R16 K30 ["ConfigurableDefault"]
      106 DUPTABLE                         R17 K37 [{"name", "story"}]
      107 LOADK                            R18 K40 ["Controlled (one expanded item at a time)"]
      108 SETTABLEKS                       R18 R17 K35 ["name"]
      110 DUPCLOSURE                       R18 K41 [PROTO_5]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R13
      115 SETTABLEKS                       R18 R17 K36 ["story"]
      117 SETTABLEKS                       R17 R16 K31 ["Controlled"]
      119 DUPTABLE                         R17 K37 [{"name", "story"}]
      120 LOADK                            R18 K42 ["Complex Controlled with unique onActivated"]
      121 SETTABLEKS                       R18 R17 K35 ["name"]
      123 DUPCLOSURE                       R18 K43 [PROTO_11]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R18 R17 K36 ["story"]
      131 SETTABLEKS                       R17 R16 K32 ["Controlled2"]
      133 DUPTABLE                         R17 K37 [{"name", "story"}]
      134 LOADK                            R18 K44 ["Partially Controlled"]
      135 SETTABLEKS                       R18 R17 K35 ["name"]
      137 DUPCLOSURE                       R18 K45 [PROTO_14]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R13
      142 SETTABLEKS                       R18 R17 K36 ["story"]
      144 SETTABLEKS                       R17 R16 K33 ["Mixed"]
      146 SETTABLEKS                       R16 R15 K27 ["stories"]
      148 DUPTABLE                         R16 K52 [{"size", "icon", "iconVariant", "contentHeight", "numItems", "divider"}]
      149 GETTABLEKS                       R17 R3 K53 ["values"]
      151 MOVE                             R18 R9
      152 CALL                             R17 1 1
      153 SETTABLEKS                       R17 R16 K46 ["size"]
      155 GETTABLEKS                       R17 R3 K53 ["values"]
      157 MOVE                             R18 R11
      158 CALL                             R17 1 1
      159 SETTABLEKS                       R17 R16 K47 ["icon"]
      161 GETTABLEKS                       R17 R3 K53 ["values"]
      163 MOVE                             R18 R10
      164 CALL                             R17 1 1
      165 SETTABLEKS                       R17 R16 K48 ["iconVariant"]
      167 GETTABLEKS                       R17 R3 K53 ["values"]
      169 MOVE                             R18 R12
      170 CALL                             R17 1 1
      171 SETTABLEKS                       R17 R16 K49 ["contentHeight"]
      173 LOADN                            R17 3
      174 SETTABLEKS                       R17 R16 K50 ["numItems"]
      176 LOADB                            R17 1
      177 SETTABLEKS                       R17 R16 K51 ["divider"]
      179 SETTABLEKS                       R16 R15 K28 ["controls"]
      181 RETURN                           R15 1
