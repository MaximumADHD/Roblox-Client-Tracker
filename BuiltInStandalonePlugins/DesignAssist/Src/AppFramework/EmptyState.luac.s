PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"Title"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["Text"]
        5 DUPTABLE                         R4 K7 [{["Text"], ["tag"] = "text-heading-small content-emphasis text-align-x-center auto-y size-full-0", ["LayoutOrder"] = 2}]
        6 GETTABLEKS                       R5 R0 K8 ["title"]
        8 SETTABLEKS                       R5 R4 K2 ["Text"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K0 ["Title"]
       13 GETTABLEKS                       R2 R0 K9 ["icon"]
       15 JUMPIFEQKNIL                     R2 ; [+22]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K10 ["Icon"]
       21 DUPTABLE                         R4 K14 [{["name"], ["size"], ["LayoutOrder"] = 1}]
       22 GETTABLEKS                       R5 R0 K9 ["icon"]
       24 SETTABLEKS                       R5 R4 K11 ["name"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K15 ["Enums"]
       29 GETTABLEKS                       R5 R5 K16 ["IconSize"]
       31 GETTABLEKS                       R5 R5 K17 ["XLarge"]
       33 SETTABLEKS                       R5 R4 K12 ["size"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K10 ["Icon"]
       38 GETTABLEKS                       R2 R0 K18 ["description"]
       40 JUMPIFEQKNIL                     R2 ; [+13]
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K2 ["Text"]
       46 DUPTABLE                         R4 K21 [{["Text"], ["tag"] = "text-body-medium content-muted text-wrap text-align-x-center auto-y size-full-0", ["LayoutOrder"] = 3}]
       47 GETTABLEKS                       R5 R0 K18 ["description"]
       49 SETTABLEKS                       R5 R4 K2 ["Text"]
       51 CALL                             R2 2 1
       52 SETTABLEKS                       R2 R1 K22 ["Description"]
       54 GETTABLEKS                       R2 R0 K23 ["action"]
       56 JUMPIFEQKNIL                     R2 ; [+41]
       58 GETUPVAL                         R2 0
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R3 R3 K24 ["Button"]
       62 DUPTABLE                         R4 K29 [{["text"], ["onActivated"], ["variant"], ["size"], ["LayoutOrder"] = 4}]
       63 GETTABLEKS                       R5 R0 K23 ["action"]
       65 GETTABLEKS                       R5 R5 K30 ["label"]
       67 SETTABLEKS                       R5 R4 K25 ["text"]
       69 GETTABLEKS                       R5 R0 K23 ["action"]
       71 GETTABLEKS                       R5 R5 K26 ["onActivated"]
       73 JUMPIF                           R5 ; [+1]
       74 DUPCLOSURE                       R5 K31 [PROTO_0]
       75 SETTABLEKS                       R5 R4 K26 ["onActivated"]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K15 ["Enums"]
       80 GETTABLEKS                       R5 R5 K32 ["ButtonVariant"]
       82 GETTABLEKS                       R5 R5 K33 ["Standard"]
       84 SETTABLEKS                       R5 R4 K27 ["variant"]
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K15 ["Enums"]
       89 GETTABLEKS                       R5 R5 K34 ["InputSize"]
       91 GETTABLEKS                       R5 R5 K35 ["Medium"]
       93 SETTABLEKS                       R5 R4 K12 ["size"]
       95 CALL                             R2 2 1
       96 SETTABLEKS                       R2 R1 K36 ["Action"]
       98 GETUPVAL                         R2 0
       99 GETUPVAL                         R3 1
      100 GETTABLEKS                       R3 R3 K37 ["View"]
      102 DUPTABLE                         R4 K41 [{["testId"] = "--appkit-empty-state", ["LayoutOrder"], ["tag"] = "col align-x-center align-y-center gap-medium padding-large size-full"}]
      103 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
      105 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
      107 MOVE                             R5 R1
      108 CALL                             R2 3 -1
      109 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.EmptyState must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R1 K12 ["createElement"]
       30 DUPCLOSURE                       R4 K13 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
