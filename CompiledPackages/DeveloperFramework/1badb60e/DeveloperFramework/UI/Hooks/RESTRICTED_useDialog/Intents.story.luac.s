PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Here are the details:\n- This is a detail\n- You rock!\n- Have a nice day!"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K11 [{["Intent"], ["Heading"] = "Are you sure you want to quit Roblox Studio?", ["Body"] = "The details will be shown here. The details will be shown here.", ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["ActionTertiary"], ["Title"]}]
        5 GETTABLEKS                       R5 R0 K1 ["Intent"]
        7 SETTABLEKS                       R5 R4 K1 ["Intent"]
        9 MOVE                             R5 R2
       10 CALL                             R5 0 1
       11 SETTABLEKS                       R5 R4 K6 ["Contents"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K12 ["OK"]
       16 SETTABLEKS                       R5 R4 K7 ["ActionPrimary"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K13 ["CANCEL"]
       21 SETTABLEKS                       R5 R4 K8 ["ActionSecondary"]
       23 SETTABLEKS                       R1 R4 K9 ["ActionTertiary"]
       25 GETTABLEKS                       R5 R0 K1 ["Intent"]
       27 SETTABLEKS                       R5 R4 K10 ["Title"]
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K14 ["createElement"]
       33 GETUPVAL                         R5 4
       34 DUPTABLE                         R6 K18 [{["OnClick"], ["Text"] = "Show Dialog"}]
       35 SETTABLEKS                       R3 R6 K15 ["OnClick"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R2 K9 ["Components"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R2 K10 ["IconButton"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       31 GETTABLEKS                       R5 R5 K12 ["useDialogDetailsAction"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Util"]
       38 GETTABLEKS                       R6 R6 K13 ["DialogAction"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K4 ["Parent"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 0 6
       50 LOADK                            R8 K14 ["Confirmation"]
       51 LOADK                            R9 K15 ["Destructive"]
       52 LOADK                            R10 K16 ["Error"]
       53 LOADK                            R11 K17 ["Information"]
       54 LOADK                            R12 K18 ["Question"]
       55 LOADK                            R13 K19 ["Warning"]
       56 SETLIST                          R7 R8 6 [1]
       58 DUPCLOSURE                       R8 K20 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R9 0 0
       66 MOVE                             R10 R7
       67 LOADNIL                          R11
       68 LOADNIL                          R12
       69 FORGPREP                         R10
       70 DUPTABLE                         R17 K23 [{"name", "story"}]
       71 SETTABLEKS                       R14 R17 K21 ["name"]
       73 GETTABLEKS                       R18 R1 K24 ["createElement"]
       75 MOVE                             R19 R8
       76 DUPTABLE                         R20 K26 [{"Intent"}]
       77 SETTABLEKS                       R14 R20 K25 ["Intent"]
       79 CALL                             R18 2 1
       80 SETTABLEKS                       R18 R17 K22 ["story"]
       82 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       84 MOVE                             R16 R9
       85 GETIMPORT                        R15 K29 [table.insert]
       87 CALL                             R15 2 0
       88 FORGLOOP                         R10 2 ; [-19]
       90 DUPTABLE                         R10 K31 [{"stories"}]
       91 SETTABLEKS                       R9 R10 K30 ["stories"]
       93 RETURN                           R10 1
