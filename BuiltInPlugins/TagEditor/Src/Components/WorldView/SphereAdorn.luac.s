PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["Adornee"]
        4 GETTABLEKS                       R3 R3 K1 ["ClassName"]
        6 JUMPIFNOTEQKS                    R3 K2 ["Attachment"] ; [+10]
        8 GETTABLEKS                       R3 R0 K0 ["Adornee"]
       10 GETTABLEKS                       R1 R3 K3 ["Parent"]
       12 GETTABLEKS                       R3 R0 K0 ["Adornee"]
       14 GETTABLEKS                       R2 R3 K4 ["CFrame"]
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R1 R0 K0 ["Adornee"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["createElement"]
       22 LOADK                            R4 K6 ["SphereHandleAdornment"]
       23 DUPTABLE                         R5 K12 [{[1], ["CFrame"], ["Color3"], ["AlwaysOnTop"], ["Transparency"] = 0.3, ["ZIndex"]}]
       24 SETTABLEKS                       R1 R5 K0 ["Adornee"]
       26 SETTABLEKS                       R2 R5 K4 ["CFrame"]
       28 GETTABLEKS                       R6 R0 K13 ["Color"]
       30 SETTABLEKS                       R6 R5 K7 ["Color3"]
       32 GETTABLEKS                       R6 R0 K8 ["AlwaysOnTop"]
       34 SETTABLEKS                       R6 R5 K8 ["AlwaysOnTop"]
       36 GETTABLEKS                       R7 R0 K8 ["AlwaysOnTop"]
       38 JUMPIFNOT                        R7 ; [+2]
       39 LOADN                            R6 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K11 ["ZIndex"]
       44 CALL                             R3 2 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K7 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
