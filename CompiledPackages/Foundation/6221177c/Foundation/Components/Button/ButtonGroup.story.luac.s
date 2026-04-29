PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["PrimaryButton clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["SecondaryButton clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 NEWTABLE                         R4 2 0
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["row wrap gap-small size-full-0 auto-y"]
       10 GETTABLEKS                       R6 R0 K4 ["fillBehavior"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K5 ["Fill"]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K6 ["fill-x"]
       21 SETTABLEKS                       R4 R3 K1 ["tag"]
       23 DUPTABLE                         R4 K9 [{"Button1", "Button2"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K15 [{"icon", "text", "variant", "onActivated", "fillBehavior", "size"}]
       29 LOADK                            R8 K16 ["icons/common/robux"]
       30 SETTABLEKS                       R8 R7 K10 ["icon"]
       32 LOADK                            R8 K17 ["BUT WAIT NO CLICK ME!!!"]
       33 SETTABLEKS                       R8 R7 K11 ["text"]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R8 R9 K18 ["Emphasis"]
       38 SETTABLEKS                       R8 R7 K12 ["variant"]
       40 DUPCLOSURE                       R8 K19 [PROTO_0]
       41 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       43 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       45 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       47 GETTABLEKS                       R8 R0 K14 ["size"]
       49 SETTABLEKS                       R8 R7 K14 ["size"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K7 ["Button1"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["createElement"]
       57 GETUPVAL                         R6 3
       58 DUPTABLE                         R7 K20 [{"text", "variant", "onActivated", "fillBehavior", "size"}]
       59 GETTABLEKS                       R8 R0 K11 ["text"]
       61 SETTABLEKS                       R8 R7 K11 ["text"]
       63 GETUPVAL                         R9 4
       64 GETTABLEKS                       R8 R9 K21 ["Standard"]
       66 SETTABLEKS                       R8 R7 K12 ["variant"]
       68 DUPCLOSURE                       R8 K22 [PROTO_1]
       69 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       71 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       73 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       75 GETTABLEKS                       R8 R0 K14 ["size"]
       77 SETTABLEKS                       R8 R7 K14 ["size"]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R4 K8 ["Button2"]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R2 R4 K2 ["text"]
        5 LOADK                            R3 K3 [" clicked!"]
        6 CONCAT                           R1 R2 R3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"text", "variant", "onActivated", "fillBehavior", "size", "width"}]
        5 GETTABLEKS                       R4 R0 K1 ["text"]
        7 SETTABLEKS                       R4 R3 K1 ["text"]
        9 GETTABLEKS                       R4 R0 K2 ["variant"]
       11 SETTABLEKS                       R4 R3 K2 ["variant"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K8 ["Fill"]
       20 SETTABLEKS                       R4 R3 K4 ["fillBehavior"]
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K9 ["Medium"]
       25 SETTABLEKS                       R4 R3 K5 ["size"]
       27 GETIMPORT                        R4 K12 [UDim.new]
       29 LOADN                            R5 1
       30 LOADN                            R6 0
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K6 ["width"]
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row gap-small size-full-0 auto-y"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_4]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CALL                             R3 2 -1
       18 CALL                             R0 -1 -1
       19 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"text", "size", "fillBehavior"}]
        2 GETTABLEKS                       R4 R0 K4 ["controls"]
        4 GETTABLEKS                       R3 R4 K0 ["text"]
        6 SETTABLEKS                       R3 R2 K0 ["text"]
        8 GETTABLEKS                       R4 R0 K4 ["controls"]
       10 GETTABLEKS                       R3 R4 K1 ["size"]
       12 SETTABLEKS                       R3 R2 K1 ["size"]
       14 GETTABLEKS                       R4 R0 K4 ["controls"]
       16 GETTABLEKS                       R3 R4 K2 ["fillBehavior"]
       18 SETTABLEKS                       R3 R2 K2 ["fillBehavior"]
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["FillBehavior"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K16 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R10 0 3
       62 DUPTABLE                         R11 K19 [{"text", "variant"}]
       63 LOADK                            R12 K20 ["Cancel"]
       64 SETTABLEKS                       R12 R11 K17 ["text"]
       66 GETTABLEKS                       R12 R5 K21 ["Standard"]
       68 SETTABLEKS                       R12 R11 K18 ["variant"]
       70 DUPTABLE                         R12 K19 [{"text", "variant"}]
       71 LOADK                            R13 K22 ["Continue without accepting"]
       72 SETTABLEKS                       R13 R12 K17 ["text"]
       74 GETTABLEKS                       R13 R5 K23 ["SoftEmphasis"]
       76 SETTABLEKS                       R13 R12 K18 ["variant"]
       78 DUPTABLE                         R13 K19 [{"text", "variant"}]
       79 LOADK                            R14 K24 ["Accept"]
       80 SETTABLEKS                       R14 R13 K17 ["text"]
       82 GETTABLEKS                       R14 R5 K25 ["Emphasis"]
       84 SETTABLEKS                       R14 R13 K18 ["variant"]
       86 SETLIST                          R10 R11 3 [1]
       88 DUPCLOSURE                       R11 K26 [PROTO_5]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R6
       96 DUPTABLE                         R12 K30 [{"summary", "stories", "controls"}]
       97 LOADK                            R13 K31 ["Button Stack"]
       98 SETTABLEKS                       R13 R12 K27 ["summary"]
      100 NEWTABLE                         R13 0 2
      102 DUPTABLE                         R14 K34 [{"name", "summary", "story"}]
      103 LOADK                            R15 K35 ["Basic"]
      104 SETTABLEKS                       R15 R14 K32 ["name"]
      106 LOADK                            R15 K36 ["Button size based on their content, either filling the container or fitting the content."]
      107 SETTABLEKS                       R15 R14 K27 ["summary"]
      109 DUPCLOSURE                       R15 K37 [PROTO_6]
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R15 R14 K33 ["story"]
      113 DUPTABLE                         R15 K34 [{"name", "summary", "story"}]
      114 LOADK                            R16 K38 ["Evenly sized buttons"]
      115 SETTABLEKS                       R16 R15 K32 ["name"]
      117 LOADK                            R16 K39 ["All buttons are the same width, regardless of their content."]
      118 SETTABLEKS                       R16 R15 K27 ["summary"]
      120 SETTABLEKS                       R11 R15 K33 ["story"]
      122 SETLIST                          R13 R14 2 [1]
      124 SETTABLEKS                       R13 R12 K28 ["stories"]
      126 DUPTABLE                         R13 K42 [{"text", "size", "fillBehavior"}]
      127 LOADK                            R14 K43 ["Click me!"]
      128 SETTABLEKS                       R14 R13 K17 ["text"]
      130 GETTABLEKS                       R14 R2 K44 ["values"]
      132 MOVE                             R15 R6
      133 CALL                             R14 1 1
      134 SETTABLEKS                       R14 R13 K40 ["size"]
      136 NEWTABLE                         R14 0 2
      138 GETTABLEKS                       R15 R8 K45 ["Fit"]
      140 GETTABLEKS                       R16 R8 K46 ["Fill"]
      142 SETLIST                          R14 R15 2 [1]
      144 SETTABLEKS                       R14 R13 K41 ["fillBehavior"]
      146 SETTABLEKS                       R13 R12 K29 ["controls"]
      148 RETURN                           R12 1
