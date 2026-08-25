PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onStateChanged"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onStateChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createWindowAsync"]
        3 DUPTABLE                         R1 K8 [{["title"], ["size"], ["minSize"], ["initialEnabled"] = False, ["onStateChanged"], ["testingId"]}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K9 ["Title"]
        7 SETTABLEKS                       R2 R1 K1 ["title"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K10 ["Size"]
       12 SETTABLEKS                       R2 R1 K2 ["size"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K11 ["MinSize"]
       17 SETTABLEKS                       R2 R1 K3 ["minSize"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R2 R1 K6 ["onStateChanged"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K7 ["testingId"]
       27 SETTABLEKS                       R2 R1 K7 ["testingId"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFEQKS                       R0 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["value"]
        9 GETTABLEKS                       R0 R0 K3 ["cleanup"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Title"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["setTitle"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["Title"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["setSize"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Size"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["MinSize"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["setMinSize"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["MinSize"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onStateChanged"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onStateChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onStateChanged"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["setOnStateChanged"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+22]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["testingId"]
        5 JUMPIFNOT                        R0 ; [+18]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["setTestingId"]
        9 JUMPIFNOT                        R0 ; [+14]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["setTestingId"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["testingId"]
       16 GETTABLEKS                       R1 R1 K2 ["className"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K0 ["testingId"]
       21 GETTABLEKS                       R2 R2 K3 ["propertyName"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["useAsync"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 1
       21 GETTABLEKS                       R7 R1 K4 ["createWindowAsync"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R4
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 0
       37 GETTABLEKS                       R6 R4 K6 ["status"]
       39 JUMPIFNOTEQKS                    R6 K7 ["ok"] ; [+4]
       41 GETTABLEKS                       R5 R4 K8 ["value"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R8 0 2
       53 MOVE                             R9 R5
       54 GETTABLEKS                       R10 R0 K9 ["Title"]
       56 SETLIST                          R8 R9 2 [1]
       58 CALL                             R6 2 0
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       62 NEWCLOSURE                       R7 P3
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R8 0 2
       67 MOVE                             R9 R5
       68 GETTABLEKS                       R10 R0 K10 ["Size"]
       70 SETLIST                          R8 R9 2 [1]
       72 CALL                             R6 2 0
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R6 R6 K11 ["useLayoutEffect"]
       76 NEWCLOSURE                       R7 P4
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R0
       79 NEWTABLE                         R8 0 2
       81 MOVE                             R9 R5
       82 GETTABLEKS                       R10 R0 K12 ["MinSize"]
       84 SETLIST                          R8 R9 2 [1]
       86 CALL                             R6 2 0
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       90 NEWCLOSURE                       R7 P5
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R3
       94 NEWTABLE                         R8 0 2
       96 MOVE                             R9 R5
       97 GETTABLEKS                       R10 R0 K13 ["onStateChanged"]
       99 SETLIST                          R8 R9 2 [1]
      101 CALL                             R6 2 0
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K5 ["useEffect"]
      105 NEWCLOSURE                       R7 P6
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R0
      108 NEWTABLE                         R8 0 2
      110 MOVE                             R9 R5
      111 GETTABLEKS                       R10 R0 K14 ["testingId"]
      113 SETLIST                          R8 R9 2 [1]
      115 CALL                             R6 2 0
      116 LOADB                            R6 0
      117 JUMPIFEQKNIL                     R5 ; [+19]
      119 GETUPVAL                         R6 3
      120 GETTABLEKS                       R6 R6 K15 ["createPortal"]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R7 R7 K16 ["createElement"]
      125 GETUPVAL                         R8 4
      126 DUPTABLE                         R9 K18 [{"overlayGui"}]
      127 GETTABLEKS                       R10 R5 K19 ["instance"]
      129 SETTABLEKS                       R10 R9 K17 ["overlayGui"]
      131 GETTABLEKS                       R10 R0 K20 ["Contents"]
      133 CALL                             R7 3 1
      134 GETTABLEKS                       R8 R5 K19 ["instance"]
      136 CALL                             R6 2 1
      137 DUPTABLE                         R7 K25 [{"open", "close", "visible", "portal"}]
      138 JUMPIFNOT                        R5 ; [+3]
      139 GETTABLEKS                       R8 R5 K21 ["open"]
      141 JUMP                             ; [+1]
      142 DUPCLOSURE                       R8 K26 [PROTO_10]
      143 SETTABLEKS                       R8 R7 K21 ["open"]
      145 JUMPIFNOT                        R5 ; [+3]
      146 GETTABLEKS                       R8 R5 K22 ["close"]
      148 JUMP                             ; [+1]
      149 DUPCLOSURE                       R8 K27 [PROTO_11]
      150 SETTABLEKS                       R8 R7 K22 ["close"]
      152 SETTABLEKS                       R2 R7 K23 ["visible"]
      154 SETTABLEKS                       R6 R7 K24 ["portal"]
      156 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["FoundationContextProvider"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["PropertyEditorTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["ReactRoblox"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K7 ["Components"]
       42 GETTABLEKS                       R8 R8 K8 ["Contexts"]
       44 GETTABLEKS                       R8 R8 K14 ["WindowContext"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K15 [PROTO_12]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 RETURN                           R8 1
