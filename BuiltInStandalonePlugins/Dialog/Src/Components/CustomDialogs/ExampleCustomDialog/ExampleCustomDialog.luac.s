PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["radioItems"]
        7 GETTABLEN                        R0 R1 1
        8 GETTABLEKS                       R0 R0 K2 ["id"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R6 0 2
       15 GETTABLEKS                       R7 R0 K2 ["input"]
       17 GETTABLEKS                       R7 R7 K3 ["radioItems"]
       19 MOVE                             R8 R2
       20 SETLIST                          R6 R7 2 [1]
       22 CALL                             R4 2 1
       23 NEWTABLE                         R5 0 0
       25 GETTABLEKS                       R6 R0 K2 ["input"]
       27 GETTABLEKS                       R6 R6 K3 ["radioItems"]
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 GETTABLEKS                       R11 R10 K4 ["id"]
       34 GETUPVAL                         R12 2
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K5 ["RadioGroup"]
       38 GETTABLEKS                       R13 R13 K6 ["Item"]
       40 DUPTABLE                         R14 K11 [{"value", "label", "size", "LayoutOrder"}]
       41 GETTABLEKS                       R15 R10 K4 ["id"]
       43 SETTABLEKS                       R15 R14 K7 ["value"]
       45 GETTABLEKS                       R15 R10 K12 ["text"]
       47 SETTABLEKS                       R15 R14 K8 ["label"]
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R15 R15 K13 ["Enums"]
       52 GETTABLEKS                       R15 R15 K14 ["InputSize"]
       54 GETTABLEKS                       R15 R15 K15 ["Small"]
       56 SETTABLEKS                       R15 R14 K9 ["size"]
       58 MOVE                             R15 R1
       59 CALL                             R15 0 1
       60 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       62 CALL                             R12 2 1
       63 SETTABLE                         R12 R5 R11
       64 FORGLOOP                         R6 2 ; [-33]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K16 ["useCallback"]
       69 NEWCLOSURE                       R7 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R4
       72 NEWTABLE                         R8 0 2
       74 GETTABLEKS                       R9 R0 K17 ["onResolved"]
       76 MOVE                             R10 R4
       77 SETLIST                          R8 R9 2 [1]
       79 CALL                             R6 2 1
       80 GETUPVAL                         R7 2
       81 GETUPVAL                         R8 4
       82 DUPTABLE                         R9 K26 [{["uri"], ["type"] = "Warning", ["title"] = "Custom dialog", ["description"] = "This is an example of a custom dialog!", ["primaryAction"]}]
       83 GETTABLEKS                       R10 R0 K18 ["uri"]
       85 SETTABLEKS                       R10 R9 K18 ["uri"]
       87 DUPTABLE                         R10 K29 [{["uri"], ["text"] = "OK", ["onActivated"]}]
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K30 ["child"]
       91 GETTABLEKS                       R12 R0 K18 ["uri"]
       93 LOADK                            R13 K27 ["OK"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K18 ["uri"]
       97 SETTABLEKS                       R6 R10 K28 ["onActivated"]
       99 SETTABLEKS                       R10 R9 K25 ["primaryAction"]
      101 DUPTABLE                         R10 K31 [{"RadioGroup"}]
      102 GETUPVAL                         R11 2
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K5 ["RadioGroup"]
      106 GETTABLEKS                       R12 R12 K32 ["Root"]
      108 DUPTABLE                         R13 K34 [{"value", "onValueChanged", "LayoutOrder"}]
      109 SETTABLEKS                       R4 R13 K7 ["value"]
      111 SETTABLEKS                       R3 R13 K33 ["onValueChanged"]
      113 MOVE                             R14 R1
      114 CALL                             R14 0 1
      115 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      117 MOVE                             R14 R5
      118 CALL                             R11 3 1
      119 SETTABLEKS                       R11 R10 K5 ["RadioGroup"]
      121 CALL                             R7 3 -1
      122 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R4 K13 ["SharedFlags"]
       44 GETTABLEKS                       R7 R7 K14 ["getFFlagStudioFoundationDialogComponent"]
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+5]
       48 GETTABLEKS                       R6 R4 K15 ["Components"]
       50 GETTABLEKS                       R6 R6 K2 ["Dialog"]
       52 JUMP                             ; [+9]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K11 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Components"]
       59 GETTABLEKS                       R7 R7 K16 ["DEPRECATED_Dialog"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R4 K17 ["Util"]
       64 GETTABLEKS                       R7 R7 K18 ["StudioUri"]
       66 GETTABLEKS                       R8 R2 K17 ["Util"]
       68 GETTABLEKS                       R8 R8 K19 ["counter"]
       70 GETTABLEKS                       R9 R3 K20 ["createElement"]
       72 DUPCLOSURE                       R10 K21 [PROTO_2]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 GETIMPORT                        R11 K24 [table.freeze]
       81 DUPTABLE                         R12 K27 [{"uri", "component"}]
       82 GETTABLEKS                       R13 R7 K28 ["fromWidget"]
       84 LOADK                            R14 K29 ["ExampleFeature"]
       85 LOADK                            R15 K30 ["ExampleCustomDialog"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K25 ["uri"]
       89 GETTABLEKS                       R13 R3 K31 ["memo"]
       91 MOVE                             R14 R10
       92 CALL                             R13 1 1
       93 SETTABLEKS                       R13 R12 K26 ["component"]
       95 CALL                             R11 1 -1
       96 RETURN                           R11 -1
