PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onButtonClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onButtonClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder"}]
        7 LOADK                            R5 K4 ["size-full-0 auto-y"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       14 DUPTABLE                         R5 K7 [{"TitleDesc", "Button"}]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K0 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K8 [{"LayoutOrder", "tag"}]
       20 MOVE                             R9 R1
       21 CALL                             R9 0 1
       22 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       24 LOADK                            R9 K9 ["auto-xy col gap-xsmall"]
       25 SETTABLEKS                       R9 R8 K1 ["tag"]
       27 DUPTABLE                         R9 K12 [{"Title", "Description"}]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R10 R11 K0 ["createElement"]
       31 GETUPVAL                         R11 3
       32 DUPTABLE                         R12 K14 [{"Text", "tag"}]
       33 GETTABLEKS                       R13 R0 K15 ["title"]
       35 SETTABLEKS                       R13 R12 K13 ["Text"]
       37 LOADK                            R13 K16 ["auto-xy content-emphasis text-heading-small text-align-x-left"]
       38 SETTABLEKS                       R13 R12 K1 ["tag"]
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K10 ["Title"]
       43 GETTABLEKS                       R11 R0 K17 ["description"]
       45 JUMPIFNOT                        R11 ; [+14]
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K0 ["createElement"]
       49 GETUPVAL                         R11 3
       50 DUPTABLE                         R12 K14 [{"Text", "tag"}]
       51 GETTABLEKS                       R13 R0 K17 ["description"]
       53 SETTABLEKS                       R13 R12 K13 ["Text"]
       55 LOADK                            R13 K18 ["auto-xy content-default text-body-medium text-wrap text-align-x-left"]
       56 SETTABLEKS                       R13 R12 K1 ["tag"]
       58 CALL                             R10 2 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R10
       61 SETTABLEKS                       R10 R9 K11 ["Description"]
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K5 ["TitleDesc"]
       66 GETTABLEKS                       R7 R0 K19 ["buttonText"]
       68 JUMPIFNOT                        R7 ; [+36]
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R6 R7 K0 ["createElement"]
       72 GETUPVAL                         R7 2
       73 DUPTABLE                         R8 K8 [{"LayoutOrder", "tag"}]
       74 MOVE                             R9 R1
       75 CALL                             R9 0 1
       76 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       78 LOADK                            R9 K20 ["size-full align-x-right"]
       79 SETTABLEKS                       R9 R8 K1 ["tag"]
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R9 R10 K0 ["createElement"]
       84 GETUPVAL                         R10 4
       85 DUPTABLE                         R11 K25 [{"variant", "onActivated", "text", "testId"}]
       86 GETUPVAL                         R13 5
       87 GETTABLEKS                       R12 R13 K13 ["Text"]
       89 SETTABLEKS                       R12 R11 K21 ["variant"]
       91 NEWCLOSURE                       R12 P0
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R12 R11 K22 ["onActivated"]
       95 GETTABLEKS                       R12 R0 K19 ["buttonText"]
       97 SETTABLEKS                       R12 R11 K23 ["text"]
       99 LOADK                            R12 K26 ["--start-page-HomeSectionHeader-button"]
      100 SETTABLEKS                       R12 R11 K24 ["testId"]
      102 CALL                             R9 2 -1
      103 CALL                             R6 -1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K6 ["Button"]
      108 CALL                             R2 3 -1
      109 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["counter"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K9 ["Util"]
       31 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["Text"]
       36 GETTABLEKS                       R6 R4 K14 ["Button"]
       38 GETTABLEKS                       R8 R4 K15 ["Enums"]
       40 GETTABLEKS                       R7 R8 K16 ["ButtonVariant"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R12 R0 K11 ["Src"]
       46 GETTABLEKS                       R11 R12 K12 ["Foundation"]
       48 GETTABLEKS                       R10 R11 K17 ["Components"]
       50 GETTABLEKS                       R9 R10 K18 ["Frame"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K19 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 RETURN                           R9 1
