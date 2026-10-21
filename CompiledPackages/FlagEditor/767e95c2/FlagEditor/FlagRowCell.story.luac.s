PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 DUPTABLE                         R2 K4 [{["Color3"], ["Transparency"] = 0}]
        3 GETTABLEKS                       R3 R1 K5 ["textColor"]
        5 SETTABLEKS                       R3 R2 K1 ["Color3"]
        7 DUPTABLE                         R3 K10 [{["Font"], ["FontSize"], ["LineHeight"] = 1.2}]
        8 GETTABLEKS                       R4 R1 K11 ["font"]
       10 SETTABLEKS                       R4 R3 K6 ["Font"]
       12 GETTABLEKS                       R4 R1 K12 ["textSize"]
       14 SETTABLEKS                       R4 R3 K7 ["FontSize"]
       16 GETTABLEKS                       R5 R1 K13 ["showInput"]
       18 JUMPIFNOT                        R5 ; [+10]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K14 ["createElement"]
       22 GETUPVAL                         R5 1
       23 DUPTABLE                         R6 K18 [{["text"] = "Click Me", ["onActivated"]}]
       24 DUPCLOSURE                       R7 K19 [PROTO_0]
       25 SETTABLEKS                       R7 R6 K17 ["onActivated"]
       27 CALL                             R4 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K14 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K22 [{["tag"] = "auto-xy size-full-0 bg-surface-200"}]
       35 DUPTABLE                         R8 K24 [{"FlagRowCell"}]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K14 ["createElement"]
       39 GETUPVAL                         R10 3
       40 DUPTABLE                         R11 K29 [{"text", "size", "textStyle", "fontStyle", "input"}]
       41 GETTABLEKS                       R12 R1 K15 ["text"]
       43 SETTABLEKS                       R12 R11 K15 ["text"]
       45 GETIMPORT                        R12 K32 [UDim2.fromOffset]
       47 LOADN                            R13 200
       48 LOADN                            R14 50
       49 CALL                             R12 2 1
       50 SETTABLEKS                       R12 R11 K25 ["size"]
       52 SETTABLEKS                       R2 R11 K26 ["textStyle"]
       54 SETTABLEKS                       R3 R11 K27 ["fontStyle"]
       56 SETTABLEKS                       R4 R11 K28 ["input"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K23 ["FlagRowCell"]
       61 CALL                             R5 3 -1
       62 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Button"]
       21 GETTABLEKS                       R5 R3 K10 ["View"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["FlagRowCell"]
       27 CALL                             R6 1 1
       28 DUPTABLE                         R7 K17 [{["name"] = "FlagRowCell", ["summary"] = "A cell component for displaying text and optional input in a flag row.", ["story"], ["controls"]}]
       29 DUPCLOSURE                       R8 K18 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 SETTABLEKS                       R8 R7 K15 ["story"]
       36 DUPTABLE                         R8 K27 [{["text"] = "Sample Text", ["textColor"], ["textSize"] = 14, ["font"], ["showInput"] = False}]
       37 NEWTABLE                         R9 0 4
       39 GETIMPORT                        R10 K30 [Color3.new]
       41 LOADN                            R11 0
       42 LOADN                            R12 1
       43 LOADN                            R13 0
       44 CALL                             R10 3 1
       45 GETIMPORT                        R11 K30 [Color3.new]
       47 LOADN                            R12 1
       48 LOADN                            R13 1
       49 LOADN                            R14 1
       50 CALL                             R11 3 1
       51 GETIMPORT                        R12 K30 [Color3.new]
       53 LOADN                            R13 1
       54 LOADN                            R14 0
       55 LOADN                            R15 0
       56 CALL                             R12 3 1
       57 GETIMPORT                        R13 K30 [Color3.new]
       59 LOADN                            R14 0
       60 LOADN                            R15 0
       61 LOADN                            R16 1
       62 CALL                             R13 3 -1
       63 SETLIST                          R9 R10 -1 [1]
       65 SETTABLEKS                       R9 R8 K21 ["textColor"]
       67 GETIMPORT                        R9 K34 [Enum.Font.SourceSans]
       69 SETTABLEKS                       R9 R8 K24 ["font"]
       71 SETTABLEKS                       R8 R7 K16 ["controls"]
       73 RETURN                           R7 1
