PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Title", "Message", "Overwrite", "Reload"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Skills"]
        3 LOADK                            R4 K6 ["ConflictTitle"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["Skills"]
       11 LOADK                            R4 K8 ["ConflictMessage"]
       12 DUPTABLE                         R5 K10 [{"name"}]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K11 ["skillName"]
       16 SETTABLEKS                       R6 R5 K9 ["name"]
       18 NAMECALL                         R1 R1 K7 ["getText"]
       20 CALL                             R1 4 1
       21 SETTABLEKS                       R1 R0 K1 ["Message"]
       23 GETUPVAL                         R1 0
       24 LOADK                            R3 K5 ["Skills"]
       25 LOADK                            R4 K12 ["ConflictOverwrite"]
       26 NAMECALL                         R1 R1 K7 ["getText"]
       28 CALL                             R1 3 1
       29 SETTABLEKS                       R1 R0 K2 ["Overwrite"]
       31 GETUPVAL                         R1 0
       32 LOADK                            R3 K5 ["Skills"]
       33 LOADK                            R4 K13 ["ConflictReload"]
       34 NAMECALL                         R1 R1 K7 ["getText"]
       36 CALL                             R1 3 1
       37 SETTABLEKS                       R1 R0 K3 ["Reload"]
       39 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["locale"]
       11 GETTABLEKS                       R5 R0 K2 ["skillName"]
       13 SETLIST                          R3 R4 2 [1]
       15 CALL                             R1 2 1
       16 NEWTABLE                         R2 0 2
       18 DUPTABLE                         R3 K8 [{"text", "variant", "onActivated", "size", "testId"}]
       19 GETTABLEKS                       R4 R1 K9 ["Overwrite"]
       21 SETTABLEKS                       R4 R3 K3 ["text"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K10 ["Emphasis"]
       26 SETTABLEKS                       R4 R3 K4 ["variant"]
       28 GETTABLEKS                       R4 R0 K11 ["onOverwrite"]
       30 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K12 ["XSmall"]
       35 SETTABLEKS                       R4 R3 K6 ["size"]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K13 ["Skills"]
       40 GETTABLEKS                       R4 R4 K14 ["DetailPane"]
       42 GETTABLEKS                       R4 R4 K15 ["ConflictModal"]
       44 GETTABLEKS                       R4 R4 K16 ["OverwriteButton"]
       46 SETTABLEKS                       R4 R3 K7 ["testId"]
       48 DUPTABLE                         R4 K8 [{"text", "variant", "onActivated", "size", "testId"}]
       49 GETTABLEKS                       R5 R1 K17 ["Reload"]
       51 SETTABLEKS                       R5 R4 K3 ["text"]
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R5 R5 K18 ["Standard"]
       56 SETTABLEKS                       R5 R4 K4 ["variant"]
       58 GETTABLEKS                       R5 R0 K19 ["onReload"]
       60 SETTABLEKS                       R5 R4 K5 ["onActivated"]
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K12 ["XSmall"]
       65 SETTABLEKS                       R5 R4 K6 ["size"]
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K13 ["Skills"]
       70 GETTABLEKS                       R5 R5 K14 ["DetailPane"]
       72 GETTABLEKS                       R5 R5 K15 ["ConflictModal"]
       74 GETTABLEKS                       R5 R5 K20 ["ReloadButton"]
       76 SETTABLEKS                       R5 R4 K7 ["testId"]
       78 SETLIST                          R2 R3 2 [1]
       80 GETUPVAL                         R3 5
       81 CALL                             R3 0 1
       82 GETUPVAL                         R4 6
       83 GETUPVAL                         R5 7
       84 GETTABLEKS                       R5 R5 K21 ["Root"]
       86 DUPTABLE                         R6 K25 [{"testId", "size", "hasBackdrop", "disablePortal", "title"}]
       87 GETUPVAL                         R7 4
       88 GETTABLEKS                       R7 R7 K13 ["Skills"]
       90 GETTABLEKS                       R7 R7 K14 ["DetailPane"]
       92 GETTABLEKS                       R7 R7 K15 ["ConflictModal"]
       94 GETTABLEKS                       R7 R7 K26 ["Container"]
       96 SETTABLEKS                       R7 R6 K7 ["testId"]
       98 GETUPVAL                         R7 8
       99 GETTABLEKS                       R7 R7 K27 ["Small"]
      101 SETTABLEKS                       R7 R6 K6 ["size"]
      103 LOADB                            R7 1
      104 SETTABLEKS                       R7 R6 K22 ["hasBackdrop"]
      106 LOADB                            R7 0
      107 SETTABLEKS                       R7 R6 K23 ["disablePortal"]
      109 GETTABLEKS                       R7 R1 K28 ["Title"]
      111 SETTABLEKS                       R7 R6 K24 ["title"]
      113 DUPTABLE                         R7 K31 [{"DialogContent", "DialogActions"}]
      114 GETUPVAL                         R8 6
      115 GETUPVAL                         R9 7
      116 GETTABLEKS                       R9 R9 K32 ["Content"]
      118 DUPTABLE                         R10 K34 [{"LayoutOrder"}]
      119 MOVE                             R11 R3
      120 CALL                             R11 0 1
      121 SETTABLEKS                       R11 R10 K33 ["LayoutOrder"]
      123 DUPTABLE                         R11 K36 [{"Body"}]
      124 GETUPVAL                         R12 6
      125 GETUPVAL                         R13 9
      126 DUPTABLE                         R14 K38 [{"tag"}]
      127 LOADK                            R15 K39 ["col size-full-0 auto-y padding-y-medium"]
      128 SETTABLEKS                       R15 R14 K37 ["tag"]
      130 DUPTABLE                         R15 K41 [{"Message"}]
      131 GETUPVAL                         R16 6
      132 GETUPVAL                         R17 10
      133 DUPTABLE                         R18 K43 [{"tag", "Text"}]
      134 LOADK                            R19 K44 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
      135 SETTABLEKS                       R19 R18 K37 ["tag"]
      137 GETTABLEKS                       R19 R1 K40 ["Message"]
      139 SETTABLEKS                       R19 R18 K42 ["Text"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K40 ["Message"]
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K35 ["Body"]
      147 CALL                             R8 3 1
      148 SETTABLEKS                       R8 R7 K29 ["DialogContent"]
      150 GETUPVAL                         R8 6
      151 GETUPVAL                         R9 7
      152 GETTABLEKS                       R9 R9 K45 ["Actions"]
      154 DUPTABLE                         R10 K47 [{"LayoutOrder", "actions"}]
      155 MOVE                             R11 R3
      156 CALL                             R11 0 1
      157 SETTABLEKS                       R11 R10 K33 ["LayoutOrder"]
      159 SETTABLEKS                       R2 R10 K46 ["actions"]
      161 CALL                             R8 2 1
      162 SETTABLEKS                       R8 R7 K30 ["DialogActions"]
      164 CALL                             R4 3 -1
      165 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Resources"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R6 R6 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K15 ["Dialog"]
       46 GETTABLEKS                       R7 R1 K16 ["Text"]
       48 GETTABLEKS                       R8 R1 K17 ["View"]
       50 GETTABLEKS                       R9 R1 K18 ["Enums"]
       52 GETTABLEKS                       R9 R9 K19 ["ButtonVariant"]
       54 GETTABLEKS                       R10 R1 K18 ["Enums"]
       56 GETTABLEKS                       R10 R10 K20 ["ButtonSize"]
       58 GETTABLEKS                       R11 R1 K18 ["Enums"]
       60 GETTABLEKS                       R11 R11 K21 ["DialogSize"]
       62 GETTABLEKS                       R12 R3 K22 ["createNextOrder"]
       64 GETTABLEKS                       R13 R2 K23 ["createElement"]
       66 DUPCLOSURE                       R14 K24 [PROTO_1]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 RETURN                           R14 1
