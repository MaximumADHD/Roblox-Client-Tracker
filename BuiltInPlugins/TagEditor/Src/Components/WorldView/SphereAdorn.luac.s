PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R4 R0 K0 ["Adornee"]
        4 GETTABLEKS                       R3 R4 K1 ["ClassName"]
        6 JUMPIFNOTEQKS                    R3 K2 ["Attachment"] ; [+10]
        8 GETTABLEKS                       R3 R0 K0 ["Adornee"]
       10 GETTABLEKS                       R1 R3 K3 ["Parent"]
       12 GETTABLEKS                       R3 R0 K0 ["Adornee"]
       14 GETTABLEKS                       R2 R3 K4 ["CFrame"]
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R1 R0 K0 ["Adornee"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K5 ["createElement"]
       22 LOADK                            R4 K6 ["SphereHandleAdornment"]
       23 DUPTABLE                         R5 K11 [{"Adornee", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "ZIndex"}]
       24 SETTABLEKS                       R1 R5 K0 ["Adornee"]
       26 SETTABLEKS                       R2 R5 K4 ["CFrame"]
       28 GETTABLEKS                       R6 R0 K12 ["Color"]
       30 SETTABLEKS                       R6 R5 K7 ["Color3"]
       32 GETTABLEKS                       R6 R0 K8 ["AlwaysOnTop"]
       34 SETTABLEKS                       R6 R5 K8 ["AlwaysOnTop"]
       36 LOADK                            R6 K13 [0.3]
       37 SETTABLEKS                       R6 R5 K9 ["Transparency"]
       39 GETTABLEKS                       R7 R0 K8 ["AlwaysOnTop"]
       41 JUMPIFNOT                        R7 ; [+2]
       42 LOADN                            R6 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K10 ["ZIndex"]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K7 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
