PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onButtonClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onButtonClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
        7 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       11 DUPTABLE                         R5 K7 [{"TitleDesc", "Button"}]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K9 [{["LayoutOrder"], ["tag"] = "col gap-xsmall auto-xy"}]
       17 MOVE                             R9 R1
       18 CALL                             R9 0 1
       19 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       21 DUPTABLE                         R9 K12 [{"Title", "Description"}]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K0 ["createElement"]
       25 GETUPVAL                         R11 3
       26 DUPTABLE                         R12 K15 [{["Text"], ["tag"] = "auto-xy text-heading-small text-align-x-left content-emphasis"}]
       27 GETTABLEKS                       R13 R0 K16 ["title"]
       29 SETTABLEKS                       R13 R12 K13 ["Text"]
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K10 ["Title"]
       34 GETTABLEKS                       R11 R0 K17 ["description"]
       36 JUMPIFNOT                        R11 ; [+11]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K0 ["createElement"]
       40 GETUPVAL                         R11 3
       41 DUPTABLE                         R12 K19 [{["Text"], ["tag"] = "auto-xy text-body-medium text-wrap text-align-x-left content-default"}]
       42 GETTABLEKS                       R13 R0 K17 ["description"]
       44 SETTABLEKS                       R13 R12 K13 ["Text"]
       46 CALL                             R10 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R10
       49 SETTABLEKS                       R10 R9 K11 ["Description"]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K5 ["TitleDesc"]
       54 GETTABLEKS                       R7 R0 K20 ["buttonText"]
       56 JUMPIFNOT                        R7 ; [+30]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K0 ["createElement"]
       60 GETUPVAL                         R7 2
       61 DUPTABLE                         R8 K22 [{["LayoutOrder"], ["tag"] = "align-x-right size-full"}]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K0 ["createElement"]
       69 GETUPVAL                         R10 4
       70 DUPTABLE                         R11 K28 [{["variant"], ["onActivated"], ["text"], ["testId"] = "--start-page-HomeSectionHeader-button"}]
       71 GETUPVAL                         R12 5
       72 GETTABLEKS                       R12 R12 K13 ["Text"]
       74 SETTABLEKS                       R12 R11 K23 ["variant"]
       76 NEWCLOSURE                       R12 P0
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R12 R11 K24 ["onActivated"]
       80 GETTABLEKS                       R12 R0 K20 ["buttonText"]
       82 SETTABLEKS                       R12 R11 K25 ["text"]
       84 CALL                             R9 2 -1
       85 CALL                             R6 -1 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R6
       88 SETTABLEKS                       R6 R5 K6 ["Button"]
       90 CALL                             R2 3 -1
       91 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["counter"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["Text"]
       36 GETTABLEKS                       R6 R4 K14 ["Button"]
       38 GETTABLEKS                       R7 R4 K15 ["Enums"]
       40 GETTABLEKS                       R7 R7 K16 ["ButtonVariant"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Src"]
       46 GETTABLEKS                       R9 R9 K12 ["Foundation"]
       48 GETTABLEKS                       R9 R9 K17 ["Components"]
       50 GETTABLEKS                       R9 R9 K18 ["Frame"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K19 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 RETURN                           R9 1
