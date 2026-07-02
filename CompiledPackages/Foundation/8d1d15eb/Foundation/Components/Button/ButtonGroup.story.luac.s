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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 NEWTABLE                         R4 2 0
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["row gap-small wrap auto-y size-full-0"]
       10 GETTABLEKS                       R6 R0 K4 ["fillBehavior"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K5 ["Fill"]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K6 ["fill-x"]
       21 SETTABLEKS                       R4 R3 K1 ["tag"]
       23 DUPTABLE                         R4 K9 [{"Button1", "Button2"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K17 [{["icon"] = "icons/common/robux", ["text"] = "BUT WAIT NO CLICK ME!!!", ["variant"], ["onActivated"], ["fillBehavior"], ["size"]}]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K18 ["Emphasis"]
       32 SETTABLEKS                       R8 R7 K14 ["variant"]
       34 DUPCLOSURE                       R8 K19 [PROTO_0]
       35 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       37 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       39 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       41 GETTABLEKS                       R8 R0 K16 ["size"]
       43 SETTABLEKS                       R8 R7 K16 ["size"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K7 ["Button1"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 3
       52 DUPTABLE                         R7 K20 [{"text", "variant", "onActivated", "fillBehavior", "size"}]
       53 GETTABLEKS                       R8 R0 K12 ["text"]
       55 SETTABLEKS                       R8 R7 K12 ["text"]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K21 ["Standard"]
       60 SETTABLEKS                       R8 R7 K14 ["variant"]
       62 DUPCLOSURE                       R8 K22 [PROTO_1]
       63 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       65 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       67 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       69 GETTABLEKS                       R8 R0 K16 ["size"]
       71 SETTABLEKS                       R8 R7 K16 ["size"]
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K8 ["Button2"]
       76 CALL                             R1 3 -1
       77 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["text"]
        5 LOADK                            R3 K3 [" clicked!"]
        6 CONCAT                           R1 R2 R3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"text", "variant", "onActivated", "fillBehavior", "size", "width"}]
        5 GETTABLEKS                       R4 R0 K1 ["text"]
        7 SETTABLEKS                       R4 R3 K1 ["text"]
        9 GETTABLEKS                       R4 R0 K2 ["variant"]
       11 SETTABLEKS                       R4 R3 K2 ["variant"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K8 ["Fill"]
       20 SETTABLEKS                       R4 R3 K4 ["fillBehavior"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K9 ["Medium"]
       25 SETTABLEKS                       R4 R3 K5 ["size"]
       27 GETIMPORT                        R4 K12 [UDim.new]
       29 LOADN                            R5 1
       30 LOADN                            R6 0
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K6 ["width"]
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-small auto-y size-full-0 fill-x"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_4]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CALL                             R3 2 -1
       15 CALL                             R0 -1 -1
       16 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"text", "size", "fillBehavior"}]
        2 GETTABLEKS                       R3 R0 K4 ["controls"]
        4 GETTABLEKS                       R3 R3 K0 ["text"]
        6 SETTABLEKS                       R3 R2 K0 ["text"]
        8 GETTABLEKS                       R3 R0 K4 ["controls"]
       10 GETTABLEKS                       R3 R3 K1 ["size"]
       12 SETTABLEKS                       R3 R2 K1 ["size"]
       14 GETTABLEKS                       R3 R0 K4 ["controls"]
       16 GETTABLEKS                       R3 R3 K2 ["fillBehavior"]
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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["FillBehavior"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K16 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R10 0 3
       62 DUPTABLE                         R11 K20 [{["text"] = "Cancel", ["variant"]}]
       63 GETTABLEKS                       R12 R5 K21 ["Standard"]
       65 SETTABLEKS                       R12 R11 K19 ["variant"]
       67 DUPTABLE                         R12 K23 [{["text"] = "Continue without accepting", ["variant"]}]
       68 GETTABLEKS                       R13 R5 K24 ["SoftEmphasis"]
       70 SETTABLEKS                       R13 R12 K19 ["variant"]
       72 DUPTABLE                         R13 K26 [{["text"] = "Accept", ["variant"]}]
       73 GETTABLEKS                       R14 R5 K27 ["Emphasis"]
       75 SETTABLEKS                       R14 R13 K19 ["variant"]
       77 SETLIST                          R10 R11 3 [1]
       79 DUPCLOSURE                       R11 K28 [PROTO_5]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R6
       87 DUPTABLE                         R12 K33 [{["summary"] = "Button Stack", ["stories"], ["controls"]}]
       88 NEWTABLE                         R13 0 2
       90 DUPTABLE                         R14 K38 [{["name"] = "Basic", ["summary"] = "Button size based on their content, either filling the container or fitting the content.", ["story"]}]
       91 DUPCLOSURE                       R15 K39 [PROTO_6]
       92 CAPTURE                          VAL R9
       93 SETTABLEKS                       R15 R14 K37 ["story"]
       95 DUPTABLE                         R15 K42 [{["name"] = "Evenly sized buttons", ["summary"] = "All buttons are the same width, regardless of their content.", ["story"]}]
       96 SETTABLEKS                       R11 R15 K37 ["story"]
       98 SETLIST                          R13 R14 2 [1]
      100 SETTABLEKS                       R13 R12 K31 ["stories"]
      102 DUPTABLE                         R13 K46 [{["text"] = "Click me!", ["size"], ["fillBehavior"]}]
      103 GETTABLEKS                       R14 R2 K47 ["values"]
      105 MOVE                             R15 R6
      106 CALL                             R14 1 1
      107 SETTABLEKS                       R14 R13 K44 ["size"]
      109 NEWTABLE                         R14 0 2
      111 GETTABLEKS                       R15 R8 K48 ["Fit"]
      113 GETTABLEKS                       R16 R8 K49 ["Fill"]
      115 SETLIST                          R14 R15 2 [1]
      117 SETTABLEKS                       R14 R13 K45 ["fillBehavior"]
      119 SETTABLEKS                       R13 R12 K32 ["controls"]
      121 RETURN                           R12 1
