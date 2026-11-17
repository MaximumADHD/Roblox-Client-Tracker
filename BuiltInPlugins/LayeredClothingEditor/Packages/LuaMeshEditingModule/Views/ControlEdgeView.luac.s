PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["StartPoint"]
        2 GETTABLEKS                       R3 R1 K1 ["EndPoint"]
        4 GETTABLEKS                       R4 R1 K2 ["Adornee"]
        6 GETTABLEKS                       R5 R1 K3 ["Parent"]
        8 GETTABLEKS                       R6 R1 K4 ["Transparency"]
       10 GETTABLEKS                       R7 R1 K5 ["Color"]
       12 GETTABLEKS                       R8 R1 K6 ["Thickness"]
       14 JUMPIF                           R8 ; [+1]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R9 R1 K7 ["Visible"]
       18 SUB                              R10 R2 R3
       19 GETTABLEKS                       R10 R10 K8 ["Magnitude"]
       21 GETIMPORT                        R11 K11 [CFrame.new]
       23 LOADK                            R12 K12 [{0, 0, 0}]
       24 SUB                              R13 R3 R2
       25 GETTABLEKS                       R13 R13 K13 ["Unit"]
       27 CALL                             R11 2 1
       28 ADD                              R11 R11 R2
       29 GETTABLEKS                       R12 R0 K14 ["edge"]
       31 JUMPIF                           R12 ; [+21]
       32 GETIMPORT                        R12 K16 [Instance.new]
       34 LOADK                            R13 K17 ["LineHandleAdornment"]
       35 CALL                             R12 1 1
       36 SETTABLEKS                       R12 R0 K14 ["edge"]
       38 GETTABLEKS                       R12 R0 K14 ["edge"]
       40 LOADB                            R13 0
       41 SETTABLEKS                       R13 R12 K18 ["AlwaysOnTop"]
       43 GETTABLEKS                       R12 R0 K14 ["edge"]
       45 LOADN                            R13 1
       46 SETTABLEKS                       R13 R12 K19 ["ZIndex"]
       48 GETTABLEKS                       R12 R0 K14 ["edge"]
       50 LOADB                            R13 0
       51 SETTABLEKS                       R13 R12 K20 ["Archivable"]
       53 GETTABLEKS                       R12 R0 K14 ["edge"]
       55 SETTABLEKS                       R10 R12 K21 ["Length"]
       57 GETTABLEKS                       R12 R0 K14 ["edge"]
       59 SETTABLEKS                       R11 R12 K9 ["CFrame"]
       61 GETTABLEKS                       R12 R0 K14 ["edge"]
       63 SETTABLEKS                       R8 R12 K6 ["Thickness"]
       65 GETTABLEKS                       R12 R0 K14 ["edge"]
       67 SETTABLEKS                       R6 R12 K4 ["Transparency"]
       69 GETTABLEKS                       R12 R0 K14 ["edge"]
       71 SETTABLEKS                       R7 R12 K22 ["Color3"]
       73 GETTABLEKS                       R12 R0 K14 ["edge"]
       75 SETTABLEKS                       R4 R12 K2 ["Adornee"]
       77 GETTABLEKS                       R12 R0 K14 ["edge"]
       79 SETTABLEKS                       R5 R12 K3 ["Parent"]
       81 GETTABLEKS                       R12 R0 K14 ["edge"]
       83 SETTABLEKS                       R9 R12 K7 ["Visible"]
       85 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["edge"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["edge"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["edge"]
       11 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R1 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R1 R0 K3 ["render"]
       12 DUPCLOSURE                       R1 K4 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K5 ["cleanup"]
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Util"]
       20 GETTABLEKS                       R2 R2 K7 ["Constants"]
       22 CALL                             R1 1 1
       23 NEWTABLE                         R2 2 0
       25 SETTABLEKS                       R2 R2 K8 ["__index"]
       27 GETTABLEKS                       R3 R1 K9 ["ControlEdge"]
       29 GETTABLEKS                       R3 R3 K10 ["DefaultThickness"]
       31 DUPCLOSURE                       R4 K11 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R2 K12 ["new"]
       36 RETURN                           R2 1
