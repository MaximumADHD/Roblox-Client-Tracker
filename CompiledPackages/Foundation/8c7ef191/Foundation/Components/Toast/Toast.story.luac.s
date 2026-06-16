PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["controls"]
        5 GETTABLEKS                       R1 R1 K3 ["button1"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["controls"]
        5 GETTABLEKS                       R1 R1 K3 ["button2"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K5 [{"title", "text", "icon", "actions", "width"}]
        2 GETTABLEKS                       R3 R0 K6 ["controls"]
        4 GETTABLEKS                       R3 R3 K0 ["title"]
        6 SETTABLEKS                       R3 R2 K0 ["title"]
        8 GETTABLEKS                       R3 R0 K6 ["controls"]
       10 GETTABLEKS                       R3 R3 K1 ["text"]
       12 SETTABLEKS                       R3 R2 K1 ["text"]
       14 GETTABLEKS                       R3 R0 K6 ["controls"]
       16 GETTABLEKS                       R3 R3 K2 ["icon"]
       18 SETTABLEKS                       R3 R2 K2 ["icon"]
       20 NEWTABLE                         R3 0 2
       22 GETTABLEKS                       R5 R0 K6 ["controls"]
       24 GETTABLEKS                       R5 R5 K7 ["button1"]
       26 JUMPIFEQKS                       R5 K8 [""] ; [+18]
       28 DUPTABLE                         R4 K11 [{"onActivated", "variant", "text"}]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R5 R4 K9 ["onActivated"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K12 ["Emphasis"]
       36 SETTABLEKS                       R5 R4 K10 ["variant"]
       38 GETTABLEKS                       R5 R0 K6 ["controls"]
       40 GETTABLEKS                       R5 R5 K7 ["button1"]
       42 SETTABLEKS                       R5 R4 K1 ["text"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 GETTABLEKS                       R6 R0 K6 ["controls"]
       48 GETTABLEKS                       R6 R6 K13 ["button2"]
       50 JUMPIFEQKS                       R6 K8 [""] ; [+18]
       52 DUPTABLE                         R5 K11 [{"onActivated", "variant", "text"}]
       53 NEWCLOSURE                       R6 P1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R6 R5 K9 ["onActivated"]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K14 ["Subtle"]
       60 SETTABLEKS                       R6 R5 K10 ["variant"]
       62 GETTABLEKS                       R6 R0 K6 ["controls"]
       64 GETTABLEKS                       R6 R6 K13 ["button2"]
       66 SETTABLEKS                       R6 R5 K1 ["text"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R5
       70 SETLIST                          R3 R4 2 [1]
       72 SETTABLEKS                       R3 R2 K3 ["actions"]
       74 GETIMPORT                        R3 K17 [UDim.new]
       76 LOADN                            R4 0
       77 GETTABLEKS                       R5 R0 K6 ["controls"]
       79 GETTABLEKS                       R5 R5 K4 ["width"]
       81 CALL                             R3 2 1
       82 SETTABLEKS                       R3 R2 K4 ["width"]
       84 CALL                             R1 1 -1
       85 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ButtonVariant"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R5 K11 ["getRbxThumb"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["ThumbnailType"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Components"]
       39 GETTABLEKS                       R7 R7 K14 ["Toast"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K15 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 DUPTABLE                         R8 K19 [{"summary", "stories", "controls"}]
       46 LOADK                            R9 K14 ["Toast"]
       47 SETTABLEKS                       R9 R8 K16 ["summary"]
       49 NEWTABLE                         R9 0 1
       51 DUPTABLE                         R10 K22 [{"name", "story"}]
       52 LOADK                            R11 K14 ["Toast"]
       53 SETTABLEKS                       R11 R10 K20 ["name"]
       55 DUPCLOSURE                       R11 K23 [PROTO_3]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R11 R10 K21 ["story"]
       60 SETLIST                          R9 R10 1 [1]
       62 SETTABLEKS                       R9 R8 K17 ["stories"]
       64 DUPTABLE                         R9 K30 [{"icon", "title", "text", "button1", "button2", "width"}]
       65 NEWTABLE                         R10 0 3
       67 MOVE                             R11 R4
       68 GETTABLEKS                       R12 R5 K31 ["AvatarHeadShot"]
       70 LOADK                            R13 K32 [6181525679]
       71 CALL                             R11 2 1
       72 LOADK                            R12 K33 ["icons/common/play"]
       73 LOADK                            R13 K34 [""]
       74 SETLIST                          R10 R11 3 [1]
       76 SETTABLEKS                       R10 R9 K24 ["icon"]
       78 LOADK                            R10 K35 ["Toast Notification"]
       79 SETTABLEKS                       R10 R9 K25 ["title"]
       81 LOADK                            R10 K36 ["U have been toasted . >:)"]
       82 SETTABLEKS                       R10 R9 K26 ["text"]
       84 LOADK                            R10 K37 ["Action 1"]
       85 SETTABLEKS                       R10 R9 K27 ["button1"]
       87 LOADK                            R10 K38 ["Action 2"]
       88 SETTABLEKS                       R10 R9 K28 ["button2"]
       90 NEWTABLE                         R10 0 3
       92 LOADN                            R11 144
       93 LOADN                            R12 44
       94 LOADN                            R13 244
       95 SETLIST                          R10 R11 3 [1]
       97 SETTABLEKS                       R10 R9 K29 ["width"]
       99 SETTABLEKS                       R9 R8 K18 ["controls"]
      101 RETURN                           R8 1
