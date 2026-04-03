PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["input"]
        5 GETTABLEKS                       R2 R3 K1 ["radioItems"]
        7 GETTABLEN                        R1 R2 1
        8 GETTABLEKS                       R0 R1 K2 ["id"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R6 0 2
       15 GETTABLEKS                       R8 R0 K2 ["input"]
       17 GETTABLEKS                       R7 R8 K3 ["radioItems"]
       19 MOVE                             R8 R2
       20 SETLIST                          R6 R7 2 [1]
       22 CALL                             R4 2 1
       23 NEWTABLE                         R5 0 0
       25 GETTABLEKS                       R9 R0 K2 ["input"]
       27 GETTABLEKS                       R6 R9 K3 ["radioItems"]
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 GETTABLEKS                       R11 R10 K4 ["id"]
       34 GETUPVAL                         R12 2
       35 GETUPVAL                         R15 3
       36 GETTABLEKS                       R14 R15 K5 ["RadioGroup"]
       38 GETTABLEKS                       R13 R14 K6 ["Item"]
       40 DUPTABLE                         R14 K11 [{"value", "label", "size", "LayoutOrder"}]
       41 GETTABLEKS                       R15 R10 K4 ["id"]
       43 SETTABLEKS                       R15 R14 K7 ["value"]
       45 GETTABLEKS                       R15 R10 K12 ["text"]
       47 SETTABLEKS                       R15 R14 K8 ["label"]
       49 GETUPVAL                         R18 3
       50 GETTABLEKS                       R17 R18 K13 ["Enums"]
       52 GETTABLEKS                       R16 R17 K14 ["InputSize"]
       54 GETTABLEKS                       R15 R16 K15 ["Small"]
       56 SETTABLEKS                       R15 R14 K9 ["size"]
       58 MOVE                             R15 R1
       59 CALL                             R15 0 1
       60 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       62 CALL                             R12 2 1
       63 SETTABLE                         R12 R5 R11
       64 FORGLOOP                         R6 2 ; [-33]
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R6 R7 K16 ["useCallback"]
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
       82 DUPTABLE                         R9 K23 [{"uri", "type", "title", "description", "primaryAction"}]
       83 GETTABLEKS                       R10 R0 K18 ["uri"]
       85 SETTABLEKS                       R10 R9 K18 ["uri"]
       87 LOADK                            R10 K24 ["Warning"]
       88 SETTABLEKS                       R10 R9 K19 ["type"]
       90 LOADK                            R10 K25 ["Custom dialog"]
       91 SETTABLEKS                       R10 R9 K20 ["title"]
       93 LOADK                            R10 K26 ["This is an example of a custom dialog!"]
       94 SETTABLEKS                       R10 R9 K21 ["description"]
       96 DUPTABLE                         R10 K28 [{"uri", "text", "onActivated"}]
       97 GETUPVAL                         R12 5
       98 GETTABLEKS                       R11 R12 K29 ["child"]
      100 GETTABLEKS                       R12 R0 K18 ["uri"]
      102 LOADK                            R13 K30 ["OK"]
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K18 ["uri"]
      106 LOADK                            R11 K30 ["OK"]
      107 SETTABLEKS                       R11 R10 K12 ["text"]
      109 SETTABLEKS                       R6 R10 K27 ["onActivated"]
      111 SETTABLEKS                       R10 R9 K22 ["primaryAction"]
      113 DUPTABLE                         R10 K31 [{"RadioGroup"}]
      114 GETUPVAL                         R11 2
      115 GETUPVAL                         R14 3
      116 GETTABLEKS                       R13 R14 K5 ["RadioGroup"]
      118 GETTABLEKS                       R12 R13 K32 ["Root"]
      120 DUPTABLE                         R13 K34 [{"value", "onValueChanged", "LayoutOrder"}]
      121 SETTABLEKS                       R4 R13 K7 ["value"]
      123 SETTABLEKS                       R3 R13 K33 ["onValueChanged"]
      125 MOVE                             R14 R1
      126 CALL                             R14 0 1
      127 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      129 MOVE                             R14 R5
      130 CALL                             R11 3 1
      131 SETTABLEKS                       R11 R10 K5 ["RadioGroup"]
      133 CALL                             R7 3 -1
      134 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R5 K10 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R6 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Packages"]
       41 GETTABLEKS                       R6 R7 K12 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R8 K13 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R8 R5 K14 ["Util"]
       53 GETTABLEKS                       R7 R8 K15 ["StudioUri"]
       55 GETTABLEKS                       R9 R3 K14 ["Util"]
       57 GETTABLEKS                       R8 R9 K16 ["counter"]
       59 GETTABLEKS                       R9 R4 K17 ["createElement"]
       61 DUPCLOSURE                       R10 K18 [PROTO_2]
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 GETIMPORT                        R11 K21 [table.freeze]
       70 DUPTABLE                         R12 K24 [{"uri", "component"}]
       71 GETTABLEKS                       R13 R7 K25 ["fromWidget"]
       73 LOADK                            R14 K26 ["ExampleFeature"]
       74 LOADK                            R15 K27 ["ExampleCustomDialog"]
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K22 ["uri"]
       78 GETTABLEKS                       R13 R4 K28 ["memo"]
       80 MOVE                             R14 R10
       81 CALL                             R13 1 1
       82 SETTABLEKS                       R13 R12 K23 ["component"]
       84 CALL                             R11 1 -1
       85 RETURN                           R11 -1
