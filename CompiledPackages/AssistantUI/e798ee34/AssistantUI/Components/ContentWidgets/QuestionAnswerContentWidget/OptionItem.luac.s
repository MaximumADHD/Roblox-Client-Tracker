PROTO_0:
        0 DUPTABLE                         R2 K2 [{"index", "optionText"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K4 [tostring]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["index"]
        8 SETTABLEKS                       R1 R2 K1 ["optionText"]
       10 GETUPVAL                         R3 0
       11 LOADK                            R5 K5 ["QuestionAnswer"]
       12 LOADK                            R6 K6 ["AskedOption"]
       13 MOVE                             R7 R2
       14 NAMECALL                         R3 R3 K7 ["getText"]
       16 CALL                             R3 4 -1
       17 RETURN                           R3 -1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"formatOptionText"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["formatOptionText"]
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 DUPCLOSURE                       R3 K1 [PROTO_1]
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K2 ["locale"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder", "onActivated"}]
       18 NEWTABLE                         R6 2 0
       20 LOADB                            R7 1
       21 SETTABLEKS                       R7 R6 K7 ["row size-full-0 auto-y padding-xxsmall radius-small cursor-pointer"]
       23 GETTABLEKS                       R7 R0 K8 ["isSelected"]
       25 SETTABLEKS                       R7 R6 K9 ["bg-shift-200"]
       27 SETTABLEKS                       R6 R5 K3 ["tag"]
       29 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       33 GETTABLEKS                       R6 R0 K10 ["onSelect"]
       35 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       37 DUPTABLE                         R6 K12 [{"Content"}]
       38 GETUPVAL                         R7 3
       39 GETUPVAL                         R8 4
       40 DUPTABLE                         R9 K13 [{"tag", "LayoutOrder"}]
       41 LOADK                            R10 K14 ["col size-full-0 fill auto-y gap-none"]
       42 SETTABLEKS                       R10 R9 K3 ["tag"]
       44 MOVE                             R10 R1
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       48 DUPTABLE                         R10 K17 [{"Title", "Description"}]
       49 GETUPVAL                         R11 3
       50 GETUPVAL                         R12 5
       51 DUPTABLE                         R13 K19 [{"tag", "Text", "LayoutOrder"}]
       52 LOADK                            R14 K20 ["auto-xy text-body-small content-emphasis text-wrap text-align-x-left"]
       53 SETTABLEKS                       R14 R13 K3 ["tag"]
       55 GETTABLEKS                       R14 R2 K21 ["formatOptionText"]
       57 GETTABLEKS                       R15 R0 K22 ["index"]
       59 GETTABLEKS                       R16 R0 K23 ["optionText"]
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K18 ["Text"]
       64 MOVE                             R14 R1
       65 CALL                             R14 0 1
       66 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K15 ["Title"]
       71 GETTABLEKS                       R11 R0 K24 ["clarificationText"]
       73 JUMPIFNOT                        R11 ; [+34]
       74 LOADB                            R11 0
       75 GETTABLEKS                       R12 R0 K24 ["clarificationText"]
       77 JUMPIFEQKS                       R12 K25 [""] ; [+30]
       79 GETUPVAL                         R11 3
       80 GETUPVAL                         R12 4
       81 DUPTABLE                         R13 K13 [{"tag", "LayoutOrder"}]
       82 LOADK                            R14 K26 ["size-full-0 auto-y padding-left-large"]
       83 SETTABLEKS                       R14 R13 K3 ["tag"]
       85 MOVE                             R14 R1
       86 CALL                             R14 0 1
       87 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       89 DUPTABLE                         R14 K28 [{"DescText"}]
       90 GETUPVAL                         R15 3
       91 GETUPVAL                         R16 5
       92 DUPTABLE                         R17 K19 [{"tag", "Text", "LayoutOrder"}]
       93 LOADK                            R18 K29 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
       94 SETTABLEKS                       R18 R17 K3 ["tag"]
       96 GETTABLEKS                       R18 R0 K24 ["clarificationText"]
       98 SETTABLEKS                       R18 R17 K18 ["Text"]
      100 MOVE                             R18 R1
      101 CALL                             R18 0 1
      102 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K27 ["DescText"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K16 ["Description"]
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K11 ["Content"]
      113 CALL                             R3 3 -1
      114 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Resources"]
       32 GETTABLEKS                       R6 R7 K11 ["Localization"]
       34 GETTABLEKS                       R5 R6 K12 ["Translator"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Text"]
       39 GETTABLEKS                       R6 R1 K14 ["View"]
       41 GETTABLEKS                       R7 R3 K15 ["createNextOrder"]
       43 GETTABLEKS                       R8 R2 K16 ["createElement"]
       45 DUPCLOSURE                       R9 K17 [PROTO_2]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 RETURN                           R9 1
