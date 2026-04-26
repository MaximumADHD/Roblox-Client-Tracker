PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetEnumItems"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K1 ["Name"]
        6 NAMECALL                         R7 R7 K2 ["lower"]
        8 CALL                             R7 1 1
        9 NAMECALL                         R8 R1 K2 ["lower"]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQ                      R7 R8 ; [+2]
       14 RETURN                           R6 1
       15 FORGLOOP                         R2 2 ; [-12]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [TweenInfo.new]
        2 GETTABLEKS                       R2 R0 K3 ["Time"]
        4 GETTABLEKS                       R3 R0 K4 ["EasingStyle"]
        6 GETTABLEKS                       R4 R0 K5 ["EasingDirection"]
        8 GETTABLEKS                       R6 R0 K7 ["RepeatCount"]
       10 ORK                              R5 R6 K6 [0]
       11 GETTABLEKS                       R7 R0 K9 ["Reverses"]
       13 ORK                              R6 R7 K8 [False]
       14 GETTABLEKS                       R7 R0 K10 ["Delay"]
       16 CALL                             R1 6 -1
       17 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R1 K6 [{"Time", "EasingStyle", "EasingDirection", "Delay", "RepeatCount", "Reverses"}]
        1 GETTABLEKS                       R2 R0 K0 ["Time"]
        3 SETTABLEKS                       R2 R1 K0 ["Time"]
        5 GETTABLEKS                       R2 R0 K1 ["EasingStyle"]
        7 SETTABLEKS                       R2 R1 K1 ["EasingStyle"]
        9 GETTABLEKS                       R2 R0 K2 ["EasingDirection"]
       11 SETTABLEKS                       R2 R1 K2 ["EasingDirection"]
       13 GETTABLEKS                       R2 R0 K7 ["DelayTime"]
       15 SETTABLEKS                       R2 R1 K3 ["Delay"]
       17 GETTABLEKS                       R2 R0 K4 ["RepeatCount"]
       19 SETTABLEKS                       R2 R1 K4 ["RepeatCount"]
       21 GETTABLEKS                       R2 R0 K5 ["Reverses"]
       23 SETTABLEKS                       R2 R1 K5 ["Reverses"]
       25 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Time"]
        3 LOADN                            R3 3
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K1 ["DelayTime"]
        8 LOADN                            R4 3
        9 CALL                             R2 2 1
       10 LOADK                            R4 K2 ["%*, %*, %*, %*"]
       11 MOVE                             R6 R1
       12 GETTABLEKS                       R8 R0 K3 ["EasingStyle"]
       14 GETTABLEKS                       R7 R8 K4 ["Name"]
       16 GETTABLEKS                       R9 R0 K5 ["EasingDirection"]
       18 GETTABLEKS                       R8 R9 K4 ["Name"]
       20 MOVE                             R9 R2
       21 NAMECALL                         R4 R4 K6 ["format"]
       23 CALL                             R4 5 1
       24 MOVE                             R3 R4
       25 RETURN                           R3 1

PROTO_4:
        0 LOADK                            R3 K0 ["%s"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 [","]
        6 NAMECALL                         R1 R1 K4 ["split"]
        8 CALL                             R1 2 1
        9 LENGTH                           R2 R1
       10 LOADN                            R3 4
       11 JUMPIFNOTLT                      R3 R2 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K5 ["decomposeTweenInfo"]
       18 GETIMPORT                        R3 K8 [TweenInfo.new]
       20 CALL                             R3 0 -1
       21 CALL                             R2 -1 1
       22 GETTABLEN                        R3 R1 1
       23 JUMPIFNOT                        R3 ; [+13]
       24 GETTABLEN                        R3 R1 1
       25 JUMPIFEQKS                       R3 K1 [""] ; [+11]
       27 GETTABLEN                        R4 R1 1
       28 FASTCALL1                        TONUMBER R4 ; [+2]
       29 GETIMPORT                        R3 K10 [tonumber]
       31 CALL                             R3 1 1
       32 JUMPIF                           R3 ; [+2]
       33 LOADNIL                          R4
       34 RETURN                           R4 1
       35 SETTABLEKS                       R3 R2 K11 ["Time"]
       37 GETTABLEN                        R3 R1 2
       38 JUMPIFNOT                        R3 ; [+13]
       39 GETTABLEN                        R3 R1 2
       40 JUMPIFEQKS                       R3 K1 [""] ; [+11]
       42 GETUPVAL                         R3 1
       43 GETIMPORT                        R4 K14 [Enum.EasingStyle]
       45 GETTABLEN                        R5 R1 2
       46 CALL                             R3 2 1
       47 JUMPIF                           R3 ; [+2]
       48 LOADNIL                          R4
       49 RETURN                           R4 1
       50 SETTABLEKS                       R3 R2 K13 ["EasingStyle"]
       52 GETTABLEN                        R3 R1 3
       53 JUMPIFNOT                        R3 ; [+13]
       54 GETTABLEN                        R3 R1 3
       55 JUMPIFEQKS                       R3 K1 [""] ; [+11]
       57 GETUPVAL                         R3 1
       58 GETIMPORT                        R4 K16 [Enum.EasingDirection]
       60 GETTABLEN                        R5 R1 3
       61 CALL                             R3 2 1
       62 JUMPIF                           R3 ; [+2]
       63 LOADNIL                          R4
       64 RETURN                           R4 1
       65 SETTABLEKS                       R3 R2 K15 ["EasingDirection"]
       67 GETTABLEN                        R3 R1 4
       68 JUMPIFNOT                        R3 ; [+13]
       69 GETTABLEN                        R3 R1 4
       70 JUMPIFEQKS                       R3 K1 [""] ; [+11]
       72 GETTABLEN                        R4 R1 4
       73 FASTCALL1                        TONUMBER R4 ; [+2]
       74 GETIMPORT                        R3 K10 [tonumber]
       76 CALL                             R3 1 1
       77 JUMPIF                           R3 ; [+2]
       78 LOADNIL                          R4
       79 RETURN                           R4 1
       80 SETTABLEKS                       R3 R2 K17 ["Delay"]
       82 GETIMPORT                        R3 K19 [pcall]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R4 R5 K20 ["makeTweenInfo"]
       87 MOVE                             R5 R2
       88 CALL                             R3 2 2
       89 JUMPIF                           R3 ; [+2]
       90 LOADNIL                          R5
       91 RETURN                           R5 1
       92 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["roundDecimal"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 LOADK                            R3 K8 ["*"]
       21 SETTABLEKS                       R3 R2 K9 ["DEFAULT_TRANSITION_NAME"]
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 SETTABLEKS                       R4 R2 K12 ["makeTweenInfo"]
       27 DUPCLOSURE                       R4 K13 [PROTO_2]
       28 SETTABLEKS                       R4 R2 K14 ["decomposeTweenInfo"]
       30 DUPCLOSURE                       R4 K15 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R4 R2 K16 ["tweenInfoToString"]
       34 DUPCLOSURE                       R4 K17 [PROTO_4]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R2 K18 ["parseTweenInfoString"]
       39 RETURN                           R2 1
