PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K7 [{"tag", "Size", "backgroundStyle", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
        7 LOADK                            R6 K8 ["%* auto-y clip"]
        8 GETTABLEKS                       R8 R0 K1 ["tag"]
       10 NAMECALL                         R6 R6 K9 ["format"]
       12 CALL                             R6 2 1
       13 MOVE                             R5 R6
       14 SETTABLEKS                       R5 R4 K1 ["tag"]
       16 GETTABLEKS                       R5 R0 K2 ["Size"]
       18 SETTABLEKS                       R5 R4 K2 ["Size"]
       20 DUPTABLE                         R5 K13 [{["Transparency"] = 0.7, ["Color3"]}]
       21 GETTABLEKS                       R6 R1 K14 ["Color"]
       23 GETTABLEKS                       R6 R6 K15 ["ActionEmphasis"]
       25 GETTABLEKS                       R6 R6 K16 ["Background"]
       27 GETTABLEKS                       R6 R6 K12 ["Color3"]
       29 SETTABLEKS                       R6 R5 K12 ["Color3"]
       31 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       33 GETTABLEKS                       R6 R0 K17 ["debug"]
       35 JUMPIF                           R6 ; [+2]
       36 LOADN                            R5 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K4 ["BorderSizePixel"]
       41 GETTABLEKS                       R6 R0 K17 ["debug"]
       43 JUMPIF                           R6 ; [+9]
       44 GETTABLEKS                       R5 R1 K14 ["Color"]
       46 GETTABLEKS                       R5 R5 K15 ["ActionEmphasis"]
       48 GETTABLEKS                       R5 R5 K16 ["Background"]
       50 GETTABLEKS                       R5 R5 K12 ["Color3"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K5 ["BorderColor3"]
       56 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       58 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       60 DUPTABLE                         R5 K19 [{"Label"}]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K0 ["createElement"]
       64 GETUPVAL                         R7 3
       65 DUPTABLE                         R8 K22 [{["tag"] = "position-center-center anchor-center-center size-full-2000 text-label-small text-wrap", ["Text"]}]
       66 LOADK                            R10 K23 ["%* %*"]
       67 GETTABLEKS                       R12 R0 K24 ["name"]
       69 GETTABLEKS                       R13 R0 K1 ["tag"]
       71 LOADK                            R15 K25 ["%-col%-"]
       72 LOADK                            R16 K26 [":"]
       73 NAMECALL                         R13 R13 K27 ["gsub"]
       75 CALL                             R13 3 1
       76 NAMECALL                         R10 R10 K9 ["format"]
       78 CALL                             R10 3 1
       79 MOVE                             R9 R10
       80 SETTABLEKS                       R9 R8 K21 ["Text"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K18 ["Label"]
       85 GETTABLEKS                       R6 R0 K28 ["children"]
       87 CALL                             R2 4 -1
       88 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{["tag"] = "auto-y clip", ["size"], ["backgroundStyle"], ["BorderSizePixel"], ["BorderColor3"], ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["size"]
        7 SETTABLEKS                       R4 R3 K3 ["size"]
        9 DUPTABLE                         R4 K11 [{["Transparency"] = 0.15}]
       10 SETTABLEKS                       R4 R3 K4 ["backgroundStyle"]
       12 GETTABLEKS                       R5 R0 K12 ["debug"]
       14 JUMPIF                           R5 ; [+2]
       15 LOADN                            R4 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K5 ["BorderSizePixel"]
       20 GETTABLEKS                       R5 R0 K12 ["debug"]
       22 JUMPIF                           R5 ; [+2]
       23 GETUPVAL                         R4 2
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K6 ["BorderColor3"]
       28 GETTABLEKS                       R4 R0 K7 ["LayoutOrder"]
       30 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       32 DUPTABLE                         R4 K14 [{"Label"}]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["createElement"]
       36 GETUPVAL                         R6 3
       37 DUPTABLE                         R7 K17 [{["tag"] = "position-center-center anchor-center-center size-full-2000 text-label-small text-wrap", ["Text"]}]
       38 LOADK                            R9 K18 ["%* %*"]
       39 GETTABLEKS                       R11 R0 K19 ["name"]
       41 GETUPVAL                         R12 4
       42 GETTABLEKS                       R13 R0 K3 ["size"]
       44 CALL                             R12 1 1
       45 LOADK                            R14 K20 ["%-col%-"]
       46 LOADK                            R15 K21 [":"]
       47 NAMECALL                         R12 R12 K22 ["gsub"]
       49 CALL                             R12 3 1
       50 NAMECALL                         R9 R9 K23 ["format"]
       52 CALL                             R9 3 1
       53 MOVE                             R8 R9
       54 SETTABLEKS                       R8 R7 K16 ["Text"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K13 ["Label"]
       59 GETTABLEKS                       R5 R0 K24 ["children"]
       61 CALL                             R1 4 -1
       62 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"align", "Wraps"}]
        5 GETTABLEKS                       R4 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["align"]
        9 SETTABLEKS                       R4 R3 K1 ["align"]
       11 GETTABLEKS                       R4 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R4 K5 ["wraps"]
       15 SETTABLEKS                       R4 R3 K2 ["Wraps"]
       17 DUPTABLE                         R4 K12 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K20 [{["tag"] = "xs-col-1 sm-col-4 md-col-6 lg-col-8 xl-col-8", ["name"] = "C1", ["debug"], ["LayoutOrder"] = 1}]
       23 GETTABLEKS                       R8 R0 K4 ["controls"]
       25 GETTABLEKS                       R8 R8 K17 ["debug"]
       27 SETTABLEKS                       R8 R7 K17 ["debug"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["Child1"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 GETUPVAL                         R6 2
       36 DUPTABLE                         R7 K24 [{["tag"] = "xs-col-1 sm-col-4 md-col-6 lg-col-4 xl-col-4", ["name"] = "C2", ["debug"], ["LayoutOrder"] = 2}]
       37 GETTABLEKS                       R8 R0 K4 ["controls"]
       39 GETTABLEKS                       R8 R8 K17 ["debug"]
       41 SETTABLEKS                       R8 R7 K17 ["debug"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K7 ["Child2"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["createElement"]
       49 GETUPVAL                         R6 2
       50 DUPTABLE                         R7 K28 [{["tag"] = "xs-col-1 sm-col-5 md-col-7 lg-col-10 xl-col-10", ["name"] = "C3", ["debug"], ["LayoutOrder"] = 3}]
       51 GETTABLEKS                       R8 R0 K4 ["controls"]
       53 GETTABLEKS                       R8 R8 K17 ["debug"]
       55 SETTABLEKS                       R8 R7 K17 ["debug"]
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K8 ["Child3"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K0 ["createElement"]
       63 GETUPVAL                         R6 2
       64 DUPTABLE                         R7 K32 [{["tag"] = "xs-col-3 sm-col-1 md-col-5 lg-col-2 xl-col-2", ["name"] = "C4", ["debug"], ["LayoutOrder"] = 4}]
       65 GETTABLEKS                       R8 R0 K4 ["controls"]
       67 GETTABLEKS                       R8 R8 K17 ["debug"]
       69 SETTABLEKS                       R8 R7 K17 ["debug"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K9 ["Child4"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K0 ["createElement"]
       77 GETUPVAL                         R6 2
       78 DUPTABLE                         R7 K36 [{["tag"] = "xs-col-1 sm-col-4 md-col-1 lg-col-3 xl-col-3", ["name"] = "C5", ["debug"], ["LayoutOrder"] = 5}]
       79 GETTABLEKS                       R8 R0 K4 ["controls"]
       81 GETTABLEKS                       R8 R8 K17 ["debug"]
       83 SETTABLEKS                       R8 R7 K17 ["debug"]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K10 ["Child5"]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K0 ["createElement"]
       91 GETUPVAL                         R6 2
       92 DUPTABLE                         R7 K40 [{["tag"] = "xs-col-1 sm-col-3 md-col-11 lg-col-9 xl-col-9", ["name"] = "C6", ["debug"], ["LayoutOrder"] = 6}]
       93 GETTABLEKS                       R8 R0 K4 ["controls"]
       95 GETTABLEKS                       R8 R8 K17 ["debug"]
       97 SETTABLEKS                       R8 R7 K17 ["debug"]
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R4 K11 ["Child6"]
      102 CALL                             R1 3 1
      103 GETTABLEKS                       R3 R0 K4 ["controls"]
      105 GETTABLEKS                       R3 R3 K17 ["debug"]
      107 JUMPIFNOT                        R3 ; [+14]
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R2 R2 K0 ["createElement"]
      111 GETUPVAL                         R3 3
      112 DUPTABLE                         R4 K41 [{"align"}]
      113 GETTABLEKS                       R5 R0 K4 ["controls"]
      115 GETTABLEKS                       R5 R5 K1 ["align"]
      117 SETTABLEKS                       R5 R4 K1 ["align"]
      119 MOVE                             R5 R1
      120 CALL                             R2 3 1
      121 RETURN                           R2 1
      122 MOVE                             R2 R1
      123 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"align", "Wraps"}]
        5 GETTABLEKS                       R4 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["align"]
        9 SETTABLEKS                       R4 R3 K1 ["align"]
       11 GETTABLEKS                       R4 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R4 K5 ["wraps"]
       15 SETTABLEKS                       R4 R3 K2 ["Wraps"]
       17 DUPTABLE                         R4 K12 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K19 [{["name"] = "C1", ["size"], ["debug"], ["LayoutOrder"] = 1}]
       23 DUPTABLE                         R8 K27 [{["xs"] = 1, ["sm"] = 4, ["md"] = 8, ["lg"] = 8, ["xl"] = 8}]
       24 SETTABLEKS                       R8 R7 K15 ["size"]
       26 GETTABLEKS                       R8 R0 K4 ["controls"]
       28 GETTABLEKS                       R8 R8 K16 ["debug"]
       30 SETTABLEKS                       R8 R7 K16 ["debug"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K6 ["Child1"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["createElement"]
       38 GETUPVAL                         R6 2
       39 DUPTABLE                         R7 K30 [{["name"] = "C2", ["size"], ["debug"], ["LayoutOrder"] = 2}]
       40 DUPTABLE                         R8 K32 [{["xs"] = 1, ["sm"] = 2, ["md"] = 4, ["lg"] = 4, ["xl"] = 4, ["xxl"] = 4}]
       41 SETTABLEKS                       R8 R7 K15 ["size"]
       43 GETTABLEKS                       R8 R0 K4 ["controls"]
       45 GETTABLEKS                       R8 R8 K16 ["debug"]
       47 SETTABLEKS                       R8 R7 K16 ["debug"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K7 ["Child2"]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K0 ["createElement"]
       55 GETUPVAL                         R6 2
       56 DUPTABLE                         R7 K35 [{["name"] = "C3", ["size"], ["debug"], ["LayoutOrder"] = 3}]
       57 DUPTABLE                         R8 K39 [{["xs"] = 1, ["sm"] = 5, ["md"] = 7, ["lg"] = 10, ["xl"] = 10}]
       58 SETTABLEKS                       R8 R7 K15 ["size"]
       60 GETTABLEKS                       R8 R0 K4 ["controls"]
       62 GETTABLEKS                       R8 R8 K16 ["debug"]
       64 SETTABLEKS                       R8 R7 K16 ["debug"]
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K8 ["Child3"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K0 ["createElement"]
       72 GETUPVAL                         R6 2
       73 DUPTABLE                         R7 K41 [{["name"] = "C4", ["size"], ["debug"], ["LayoutOrder"] = 4}]
       74 DUPTABLE                         R8 K42 [{["xs"] = 3, ["sm"] = 1, ["md"] = 5, ["lg"] = 2, ["xl"] = 2}]
       75 SETTABLEKS                       R8 R7 K15 ["size"]
       77 GETTABLEKS                       R8 R0 K4 ["controls"]
       79 GETTABLEKS                       R8 R8 K16 ["debug"]
       81 SETTABLEKS                       R8 R7 K16 ["debug"]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R4 K9 ["Child4"]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R5 R5 K0 ["createElement"]
       89 GETUPVAL                         R6 2
       90 DUPTABLE                         R7 K44 [{["name"] = "C5", ["size"], ["debug"], ["LayoutOrder"] = 5}]
       91 DUPTABLE                         R8 K45 [{["xs"] = 1, ["sm"] = 4, ["md"] = 1, ["lg"] = 3, ["xl"] = 3}]
       92 SETTABLEKS                       R8 R7 K15 ["size"]
       94 GETTABLEKS                       R8 R0 K4 ["controls"]
       96 GETTABLEKS                       R8 R8 K16 ["debug"]
       98 SETTABLEKS                       R8 R7 K16 ["debug"]
      100 CALL                             R5 2 1
      101 SETTABLEKS                       R5 R4 K10 ["Child5"]
      103 GETUPVAL                         R5 0
      104 GETTABLEKS                       R5 R5 K0 ["createElement"]
      106 GETUPVAL                         R6 2
      107 DUPTABLE                         R7 K48 [{["name"] = "C6", ["size"], ["debug"], ["LayoutOrder"] = 6}]
      108 DUPTABLE                         R8 K51 [{["xs"] = 1, ["sm"] = 3, ["md"] = 11, ["lg"] = 9, ["xl"] = 9}]
      109 SETTABLEKS                       R8 R7 K15 ["size"]
      111 GETTABLEKS                       R8 R0 K4 ["controls"]
      113 GETTABLEKS                       R8 R8 K16 ["debug"]
      115 SETTABLEKS                       R8 R7 K16 ["debug"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K11 ["Child6"]
      120 CALL                             R1 3 1
      121 GETTABLEKS                       R3 R0 K4 ["controls"]
      123 GETTABLEKS                       R3 R3 K16 ["debug"]
      125 JUMPIFNOT                        R3 ; [+14]
      126 GETUPVAL                         R2 0
      127 GETTABLEKS                       R2 R2 K0 ["createElement"]
      129 GETUPVAL                         R3 3
      130 DUPTABLE                         R4 K52 [{"align"}]
      131 GETTABLEKS                       R5 R0 K4 ["controls"]
      133 GETTABLEKS                       R5 R5 K1 ["align"]
      135 SETTABLEKS                       R5 R4 K1 ["align"]
      137 MOVE                             R5 R1
      138 CALL                             R2 3 1
      139 RETURN                           R2 1
      140 MOVE                             R2 R1
      141 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 12
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 MOVE                             R5 R0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K0 ["createElement"]
       10 GETUPVAL                         R7 1
       11 DUPTABLE                         R8 K4 [{["tag"] = "lg-col-4 md-col-3 sm-col-2 xl-col-6 xs-col-1 size-full-full aspect-2-1 margin-bottom-large", ["LayoutOrder"]}]
       12 GETUPVAL                         R9 2
       13 GETTABLEKS                       R9 R9 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       17 DUPTABLE                         R9 K6 [{"Frame"}]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K0 ["createElement"]
       21 GETUPVAL                         R11 1
       22 DUPTABLE                         R12 K8 [{["tag"] = "size-full-full bg-action-emphasis"}]
       23 DUPTABLE                         R13 K10 [{"Label"}]
       24 GETUPVAL                         R14 0
       25 GETTABLEKS                       R14 R14 K0 ["createElement"]
       27 GETUPVAL                         R15 3
       28 DUPTABLE                         R16 K13 [{["tag"] = "position-center-center anchor-center-center size-full-full text-label-small text-wrap", ["Text"]}]
       29 LOADK                            R18 K14 ["%*"]
       30 MOVE                             R20 R3
       31 NAMECALL                         R18 R18 K15 ["format"]
       33 CALL                             R18 2 1
       34 MOVE                             R17 R18
       35 SETTABLEKS                       R17 R16 K12 ["Text"]
       37 CALL                             R14 2 1
       38 SETTABLEKS                       R14 R13 K9 ["Label"]
       40 CALL                             R10 3 1
       41 SETTABLEKS                       R10 R9 K5 ["Frame"]
       43 CALL                             R6 3 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R4 K18 [table.insert]
       47 CALL                             R4 -1 0
       48 FORNLOOP                         R1
       49 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 1
       10 LOADN                            R4 12
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K1 ["createElement"]
       17 GETUPVAL                         R3 3
       18 DUPTABLE                         R4 K4 [{"align", "Wraps"}]
       19 GETTABLEKS                       R5 R0 K5 ["controls"]
       21 GETTABLEKS                       R5 R5 K2 ["align"]
       23 SETTABLEKS                       R5 R4 K2 ["align"]
       25 GETTABLEKS                       R5 R0 K5 ["controls"]
       27 GETTABLEKS                       R5 R5 K6 ["wraps"]
       29 SETTABLEKS                       R5 R4 K3 ["Wraps"]
       31 MOVE                             R5 R1
       32 CALL                             R2 3 1
       33 GETTABLEKS                       R4 R0 K5 ["controls"]
       35 GETTABLEKS                       R4 R4 K7 ["debug"]
       37 JUMPIFNOT                        R4 ; [+14]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K1 ["createElement"]
       41 GETUPVAL                         R4 4
       42 DUPTABLE                         R5 K8 [{"align"}]
       43 GETTABLEKS                       R6 R0 K5 ["controls"]
       45 GETTABLEKS                       R6 R6 K2 ["align"]
       47 SETTABLEKS                       R6 R5 K2 ["align"]
       49 MOVE                             R6 R2
       50 CALL                             R3 3 1
       51 RETURN                           R3 1
       52 MOVE                             R3 R2
       53 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"align", "Wraps"}]
        5 GETTABLEKS                       R4 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["align"]
        9 SETTABLEKS                       R4 R3 K1 ["align"]
       11 GETTABLEKS                       R4 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R4 K5 ["wraps"]
       15 SETTABLEKS                       R4 R3 K2 ["Wraps"]
       17 DUPTABLE                         R4 K22 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6", "Child7", "Child8", "Child9", "Child10", "Child11", "Child12", "Child13", "Child14", "Child15", "Child16"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K30 [{["tag"] = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12", ["name"] = "C1", ["debug"], ["LayoutOrder"] = 1}]
       23 GETTABLEKS                       R8 R0 K4 ["controls"]
       25 GETTABLEKS                       R8 R8 K27 ["debug"]
       27 SETTABLEKS                       R8 R7 K27 ["debug"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["Child1"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 GETUPVAL                         R6 2
       36 DUPTABLE                         R7 K34 [{["tag"] = "xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6", ["name"] = "C3", ["debug"], ["LayoutOrder"] = 3}]
       37 GETTABLEKS                       R8 R0 K4 ["controls"]
       39 GETTABLEKS                       R8 R8 K27 ["debug"]
       41 SETTABLEKS                       R8 R7 K27 ["debug"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K7 ["Child2"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["createElement"]
       49 GETUPVAL                         R6 2
       50 DUPTABLE                         R7 K34 [{["tag"] = "xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6", ["name"] = "C3", ["debug"], ["LayoutOrder"] = 3}]
       51 GETTABLEKS                       R8 R0 K4 ["controls"]
       53 GETTABLEKS                       R8 R8 K27 ["debug"]
       55 SETTABLEKS                       R8 R7 K27 ["debug"]
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K8 ["Child3"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K0 ["createElement"]
       63 GETUPVAL                         R6 2
       64 DUPTABLE                         R7 K38 [{["tag"] = "xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4", ["name"] = "C4", ["debug"], ["LayoutOrder"] = 4}]
       65 GETTABLEKS                       R8 R0 K4 ["controls"]
       67 GETTABLEKS                       R8 R8 K27 ["debug"]
       69 SETTABLEKS                       R8 R7 K27 ["debug"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K9 ["Child4"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K0 ["createElement"]
       77 GETUPVAL                         R6 2
       78 DUPTABLE                         R7 K41 [{["tag"] = "xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4", ["name"] = "C5", ["debug"], ["LayoutOrder"] = 5}]
       79 GETTABLEKS                       R8 R0 K4 ["controls"]
       81 GETTABLEKS                       R8 R8 K27 ["debug"]
       83 SETTABLEKS                       R8 R7 K27 ["debug"]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K10 ["Child5"]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K0 ["createElement"]
       91 GETUPVAL                         R6 2
       92 DUPTABLE                         R7 K44 [{["tag"] = "xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4", ["name"] = "C6", ["debug"], ["LayoutOrder"] = 6}]
       93 GETTABLEKS                       R8 R0 K4 ["controls"]
       95 GETTABLEKS                       R8 R8 K27 ["debug"]
       97 SETTABLEKS                       R8 R7 K27 ["debug"]
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R4 K11 ["Child6"]
      102 GETUPVAL                         R5 0
      103 GETTABLEKS                       R5 R5 K0 ["createElement"]
      105 GETUPVAL                         R6 2
      106 DUPTABLE                         R7 K47 [{["tag"] = "xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3", ["name"] = "C3", ["debug"], ["LayoutOrder"] = 7}]
      107 GETTABLEKS                       R8 R0 K4 ["controls"]
      109 GETTABLEKS                       R8 R8 K27 ["debug"]
      111 SETTABLEKS                       R8 R7 K27 ["debug"]
      113 CALL                             R5 2 1
      114 SETTABLEKS                       R5 R4 K12 ["Child7"]
      116 GETUPVAL                         R5 0
      117 GETTABLEKS                       R5 R5 K0 ["createElement"]
      119 GETUPVAL                         R6 2
      120 DUPTABLE                         R7 K50 [{["tag"] = "xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3", ["name"] = "C4", ["debug"], ["LayoutOrder"] = 8}]
      121 GETTABLEKS                       R8 R0 K4 ["controls"]
      123 GETTABLEKS                       R8 R8 K27 ["debug"]
      125 SETTABLEKS                       R8 R7 K27 ["debug"]
      127 CALL                             R5 2 1
      128 SETTABLEKS                       R5 R4 K13 ["Child8"]
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K0 ["createElement"]
      133 GETUPVAL                         R6 2
      134 DUPTABLE                         R7 K52 [{["tag"] = "xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3", ["name"] = "C5", ["debug"], ["LayoutOrder"] = 9}]
      135 GETTABLEKS                       R8 R0 K4 ["controls"]
      137 GETTABLEKS                       R8 R8 K27 ["debug"]
      139 SETTABLEKS                       R8 R7 K27 ["debug"]
      141 CALL                             R5 2 1
      142 SETTABLEKS                       R5 R4 K14 ["Child9"]
      144 GETUPVAL                         R5 0
      145 GETTABLEKS                       R5 R5 K0 ["createElement"]
      147 GETUPVAL                         R6 2
      148 DUPTABLE                         R7 K54 [{["tag"] = "xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3", ["name"] = "C6", ["debug"], ["LayoutOrder"] = 10}]
      149 GETTABLEKS                       R8 R0 K4 ["controls"]
      151 GETTABLEKS                       R8 R8 K27 ["debug"]
      153 SETTABLEKS                       R8 R7 K27 ["debug"]
      155 CALL                             R5 2 1
      156 SETTABLEKS                       R5 R4 K15 ["Child10"]
      158 GETUPVAL                         R5 0
      159 GETTABLEKS                       R5 R5 K0 ["createElement"]
      161 GETUPVAL                         R6 2
      162 DUPTABLE                         R7 K57 [{["tag"] = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2", ["name"] = "C3", ["debug"], ["LayoutOrder"] = 11}]
      163 GETTABLEKS                       R8 R0 K4 ["controls"]
      165 GETTABLEKS                       R8 R8 K27 ["debug"]
      167 SETTABLEKS                       R8 R7 K27 ["debug"]
      169 CALL                             R5 2 1
      170 SETTABLEKS                       R5 R4 K16 ["Child11"]
      172 GETUPVAL                         R5 0
      173 GETTABLEKS                       R5 R5 K0 ["createElement"]
      175 GETUPVAL                         R6 2
      176 DUPTABLE                         R7 K59 [{["tag"] = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2", ["name"] = "C4", ["debug"], ["LayoutOrder"] = 12}]
      177 GETTABLEKS                       R8 R0 K4 ["controls"]
      179 GETTABLEKS                       R8 R8 K27 ["debug"]
      181 SETTABLEKS                       R8 R7 K27 ["debug"]
      183 CALL                             R5 2 1
      184 SETTABLEKS                       R5 R4 K17 ["Child12"]
      186 GETUPVAL                         R5 0
      187 GETTABLEKS                       R5 R5 K0 ["createElement"]
      189 GETUPVAL                         R6 2
      190 DUPTABLE                         R7 K61 [{["tag"] = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2", ["name"] = "C5", ["debug"], ["LayoutOrder"] = 13}]
      191 GETTABLEKS                       R8 R0 K4 ["controls"]
      193 GETTABLEKS                       R8 R8 K27 ["debug"]
      195 SETTABLEKS                       R8 R7 K27 ["debug"]
      197 CALL                             R5 2 1
      198 SETTABLEKS                       R5 R4 K18 ["Child13"]
      200 GETUPVAL                         R5 0
      201 GETTABLEKS                       R5 R5 K0 ["createElement"]
      203 GETUPVAL                         R6 2
      204 DUPTABLE                         R7 K63 [{["tag"] = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2", ["name"] = "C6", ["debug"], ["LayoutOrder"] = 14}]
      205 GETTABLEKS                       R8 R0 K4 ["controls"]
      207 GETTABLEKS                       R8 R8 K27 ["debug"]
      209 SETTABLEKS                       R8 R7 K27 ["debug"]
      211 CALL                             R5 2 1
      212 SETTABLEKS                       R5 R4 K19 ["Child14"]
      214 GETUPVAL                         R5 0
      215 GETTABLEKS                       R5 R5 K0 ["createElement"]
      217 GETUPVAL                         R6 2
      218 DUPTABLE                         R7 K65 [{["tag"] = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2", ["name"] = "C6", ["debug"], ["LayoutOrder"] = 15}]
      219 GETTABLEKS                       R8 R0 K4 ["controls"]
      221 GETTABLEKS                       R8 R8 K27 ["debug"]
      223 SETTABLEKS                       R8 R7 K27 ["debug"]
      225 CALL                             R5 2 1
      226 SETTABLEKS                       R5 R4 K20 ["Child15"]
      228 GETUPVAL                         R5 0
      229 GETTABLEKS                       R5 R5 K0 ["createElement"]
      231 GETUPVAL                         R6 2
      232 DUPTABLE                         R7 K67 [{["tag"] = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2", ["name"] = "C6", ["debug"], ["LayoutOrder"] = 16}]
      233 GETTABLEKS                       R8 R0 K4 ["controls"]
      235 GETTABLEKS                       R8 R8 K27 ["debug"]
      237 SETTABLEKS                       R8 R7 K27 ["debug"]
      239 CALL                             R5 2 1
      240 SETTABLEKS                       R5 R4 K21 ["Child16"]
      242 CALL                             R1 3 1
      243 GETTABLEKS                       R3 R0 K4 ["controls"]
      245 GETTABLEKS                       R3 R3 K27 ["debug"]
      247 JUMPIFNOT                        R3 ; [+14]
      248 GETUPVAL                         R2 0
      249 GETTABLEKS                       R2 R2 K0 ["createElement"]
      251 GETUPVAL                         R3 3
      252 DUPTABLE                         R4 K68 [{"align"}]
      253 GETTABLEKS                       R5 R0 K4 ["controls"]
      255 GETTABLEKS                       R5 R5 K1 ["align"]
      257 SETTABLEKS                       R5 R4 K1 ["align"]
      259 MOVE                             R5 R1
      260 CALL                             R2 3 1
      261 RETURN                           R2 1
      262 MOVE                             R2 R1
      263 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["align"], ["Wraps"], ["LayoutOrder"] = 1}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K6 ["controls"]
        8 GETTABLEKS                       R3 R3 K1 ["align"]
       10 SETTABLEKS                       R3 R2 K1 ["align"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K6 ["controls"]
       15 GETTABLEKS                       R3 R3 K7 ["wraps"]
       17 SETTABLEKS                       R3 R2 K2 ["Wraps"]
       19 DUPTABLE                         R3 K10 [{"SubChildL1", "SubChildL2"}]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K17 [{["tag"] = "xs-col-2 sm-col-3 md-col-6 lg-col-8 xl-col-8", ["name"] = "SC1", ["Size"], ["debug"], ["LayoutOrder"] = 1}]
       25 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       27 LOADN                            R8 0
       28 LOADN                            R9 250
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K15 ["Size"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["controls"]
       35 GETTABLEKS                       R7 R7 K16 ["debug"]
       37 SETTABLEKS                       R7 R6 K16 ["debug"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K8 ["SubChildL1"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K0 ["createElement"]
       45 GETUPVAL                         R5 3
       46 DUPTABLE                         R6 K22 [{["tag"] = "xs-col-1 sm-col-3 md-col-6 lg-col-4 xl-col-4", ["name"] = "SC1", ["Size"], ["debug"], ["LayoutOrder"] = 1}]
       47 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       49 LOADN                            R8 0
       50 LOADN                            R9 250
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K15 ["Size"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K6 ["controls"]
       57 GETTABLEKS                       R7 R7 K16 ["debug"]
       59 SETTABLEKS                       R7 R6 K16 ["debug"]
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K9 ["SubChildL2"]
       64 CALL                             R0 3 1
       65 GETUPVAL                         R2 2
       66 GETTABLEKS                       R2 R2 K6 ["controls"]
       68 GETTABLEKS                       R2 R2 K16 ["debug"]
       70 JUMPIFNOT                        R2 ; [+15]
       71 GETUPVAL                         R1 0
       72 GETTABLEKS                       R1 R1 K0 ["createElement"]
       74 GETUPVAL                         R2 4
       75 DUPTABLE                         R3 K23 [{"align"}]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R4 R4 K6 ["controls"]
       79 GETTABLEKS                       R4 R4 K1 ["align"]
       81 SETTABLEKS                       R4 R3 K1 ["align"]
       83 MOVE                             R4 R0
       84 CALL                             R1 3 1
       85 RETURN                           R1 1
       86 MOVE                             R1 R0
       87 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["align"], ["Wraps"], ["LayoutOrder"] = 1}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K6 ["controls"]
        8 GETTABLEKS                       R3 R3 K1 ["align"]
       10 SETTABLEKS                       R3 R2 K1 ["align"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K6 ["controls"]
       15 GETTABLEKS                       R3 R3 K7 ["wraps"]
       17 SETTABLEKS                       R3 R2 K2 ["Wraps"]
       19 DUPTABLE                         R3 K9 [{"SubChildR1"}]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K16 [{["tag"] = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12", ["name"] = "SC1", ["Size"], ["debug"], ["LayoutOrder"] = 1}]
       25 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       27 LOADN                            R8 0
       28 LOADN                            R9 125
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K14 ["Size"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["controls"]
       35 GETTABLEKS                       R7 R7 K15 ["debug"]
       37 SETTABLEKS                       R7 R6 K15 ["debug"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K8 ["SubChildR1"]
       42 CALL                             R0 3 1
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K6 ["controls"]
       46 GETTABLEKS                       R2 R2 K15 ["debug"]
       48 JUMPIFNOT                        R2 ; [+15]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K0 ["createElement"]
       52 GETUPVAL                         R2 4
       53 DUPTABLE                         R3 K20 [{"align"}]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K6 ["controls"]
       57 GETTABLEKS                       R4 R4 K1 ["align"]
       59 SETTABLEKS                       R4 R3 K1 ["align"]
       61 MOVE                             R4 R0
       62 CALL                             R1 3 1
       63 RETURN                           R1 1
       64 MOVE                             R1 R0
       65 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["align"], ["Wraps"], ["LayoutOrder"] = 1}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K6 ["controls"]
        8 GETTABLEKS                       R3 R3 K1 ["align"]
       10 SETTABLEKS                       R3 R2 K1 ["align"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K6 ["controls"]
       15 GETTABLEKS                       R3 R3 K7 ["wraps"]
       17 SETTABLEKS                       R3 R2 K2 ["Wraps"]
       19 DUPTABLE                         R3 K9 [{"SubChildR2"}]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K16 [{["tag"] = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12", ["name"] = "SC2", ["Size"], ["debug"], ["LayoutOrder"] = 1}]
       25 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       27 LOADN                            R8 0
       28 LOADN                            R9 125
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K14 ["Size"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["controls"]
       35 GETTABLEKS                       R7 R7 K15 ["debug"]
       37 SETTABLEKS                       R7 R6 K15 ["debug"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K8 ["SubChildR2"]
       42 CALL                             R0 3 1
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K6 ["controls"]
       46 GETTABLEKS                       R2 R2 K15 ["debug"]
       48 JUMPIFNOT                        R2 ; [+15]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K0 ["createElement"]
       52 GETUPVAL                         R2 4
       53 DUPTABLE                         R3 K20 [{"align"}]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K6 ["controls"]
       57 GETTABLEKS                       R4 R4 K1 ["align"]
       59 SETTABLEKS                       R4 R3 K1 ["align"]
       61 MOVE                             R4 R0
       62 CALL                             R1 3 1
       63 RETURN                           R1 1
       64 MOVE                             R1 R0
       65 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row size-full-3000 auto-y"}]
        5 DUPTABLE                         R4 K6 [{"Left", "Right"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K9 [{["tag"] = "col flex-y-fill items-stretch auto-y", ["Size"]}]
       11 GETIMPORT                        R8 K12 [UDim2.fromScale]
       13 LOADK                            R9 K13 [0.666]
       14 LOADN                            R10 1
       15 CALL                             R8 2 1
       16 SETTABLEKS                       R8 R7 K8 ["Size"]
       18 DUPTABLE                         R8 K15 [{"ChildL1"}]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R9 0 1
       26 SETTABLEKS                       R9 R8 K14 ["ChildL1"]
       28 CALL                             R5 3 1
       29 SETTABLEKS                       R5 R4 K4 ["Left"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["createElement"]
       34 GETUPVAL                         R6 1
       35 DUPTABLE                         R7 K17 [{["tag"] = "col flex-y-fill auto-y", ["Size"]}]
       36 GETIMPORT                        R8 K12 [UDim2.fromScale]
       38 LOADK                            R9 K18 [0.333]
       39 LOADN                            R10 1
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K8 ["Size"]
       43 DUPTABLE                         R8 K21 [{"ChildR1", "ChildR2"}]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CALL                             R9 0 1
       51 SETTABLEKS                       R9 R8 K19 ["ChildR1"]
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K20 ["ChildR2"]
       62 CALL                             R5 3 1
       63 SETTABLEKS                       R5 R4 K5 ["Right"]
       65 CALL                             R1 3 -1
       66 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Grid"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R4 R4 K11 ["Root"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K10 ["Grid"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R5 R5 K12 ["Cell"]
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Components"]
       43 GETTABLEKS                       R7 R7 K10 ["Grid"]
       45 GETTABLEKS                       R7 R7 K13 ["Debug"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K8 ["Components"]
       52 GETTABLEKS                       R8 R8 K14 ["Text"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K8 ["Components"]
       59 GETTABLEKS                       R9 R9 K15 ["Types"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K16 ["Utility"]
       66 GETTABLEKS                       R10 R10 K17 ["getGridMetrics"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K16 ["Utility"]
       73 GETTABLEKS                       R11 R11 K18 ["getGridSizeTag"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K19 ["Providers"]
       80 GETTABLEKS                       R12 R12 K20 ["Style"]
       82 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K24 [Color3.fromRGB]
       87 LOADN                            R13 255
       88 LOADN                            R14 255
       89 LOADN                            R15 255
       90 CALL                             R12 3 1
       91 DUPCLOSURE                       R13 K25 [PROTO_0]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R7
       96 DUPCLOSURE                       R14 K26 [PROTO_1]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R10
      102 DUPTABLE                         R15 K30 [{["summary"] = "Grid", ["stories"], ["controls"]}]
      103 NEWTABLE                         R16 0 5
      105 DUPTABLE                         R17 K34 [{["name"] = "Base", ["story"]}]
      106 DUPCLOSURE                       R18 K35 [PROTO_2]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R18 R17 K33 ["story"]
      113 DUPTABLE                         R18 K37 [{["name"] = "Base w/ GridCell", ["story"]}]
      114 DUPCLOSURE                       R19 K38 [PROTO_3]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R19 R18 K33 ["story"]
      121 DUPTABLE                         R19 K39 [{["name"] = "Grid", ["story"]}]
      122 DUPCLOSURE                       R20 K40 [PROTO_5]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R20 R19 K33 ["story"]
      130 DUPTABLE                         R20 K42 [{["name"] = "Fluid", ["story"]}]
      131 DUPCLOSURE                       R21 K43 [PROTO_6]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R21 R20 K33 ["story"]
      138 DUPTABLE                         R21 K45 [{["name"] = "Template", ["story"]}]
      139 DUPCLOSURE                       R22 K46 [PROTO_10]
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R6
      145 SETTABLEKS                       R22 R21 K33 ["story"]
      147 SETLIST                          R16 R17 5 [1]
      149 SETTABLEKS                       R16 R15 K28 ["stories"]
      151 DUPTABLE                         R16 K52 [{["align"], ["wraps"] = True, ["debug"] = False}]
      152 NEWTABLE                         R17 0 3
      154 GETIMPORT                        R18 K56 [Enum.ItemLineAlignment.Center]
      156 GETIMPORT                        R19 K58 [Enum.ItemLineAlignment.Start]
      158 GETIMPORT                        R20 K60 [Enum.ItemLineAlignment.End]
      160 SETLIST                          R17 R18 3 [1]
      162 SETTABLEKS                       R17 R16 K47 ["align"]
      164 SETTABLEKS                       R16 R15 K29 ["controls"]
      166 RETURN                           R15 1
